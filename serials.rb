# frozen_string_literal: true

###############################################################################################
#                            WHAT I SERIALIZE?                                                #
###############################################################################################

# This scrip can help you to find what object types you need to witelist after CVE-2022-32224 update
# AD: If you using StimulusJS then checkout my gem stimulus_tag_helper
# https://rubygems.org/gems/stimulus_tag_helper
# https://github.com/crawler/stimulus_tag_helper

# UPD:
#  - Changed Progress class because iTerm was unhappy and was eating all the memory
#  - Fix progress calculation

require_relative "./config/environment"

ActiveRecord::Base.use_yaml_unsafe_load = true

class WhatISerialize
  extend ActiveRecord # Just to make constants shorter

  class Progress
    THRESHOLD = 0.01

    def initialize(total:)
      @total = total
      @to_clear = 0
      @count = 0
      @last_shown = 0
    end

    def tick
      self.count += 1
      show if time_to_show?
    end

    def hide
      print "\e[1D" * to_clear
      self.to_clear = 0
    end

    private

    attr_reader :total
    attr_accessor :to_clear, :count, :last_shown

    def time_to_show?
      percentage - last_shown > THRESHOLD
    end

    def show
      hide
      string = to_s
      print string
      self.to_clear = string.size
      self.last_shown = percentage
    end

    def to_s
      " [#{format("%06.2f", percentage.to_f)}%] "
    end

    def percentage
      count / total.to_f * 100
    end
  end

  class Pair
    BATCH_SIZE = 1000
    attr_reader :model, :attr_name, :found

    def initialize(model:, attr_name:)
      @model = model
      @attr_name = attr_name
      @found = []
    end

    def find
      in_a_batches do |value|
        self.class.bloodhound(value) do |object|
          klass = object.class
          next if found.include?(klass)

          found << klass
          progress.hide
          yield klass
        end
      end
    end

    def progress
      @progress ||= Progress.new(total: model.count)
    end

    private

    def in_a_batches
      model.in_batches(of: BATCH_SIZE) do |batch|
        batch.pluck(attr_name).each do |values|
          progress.tick
          values.each { yield(_1) }
        end
      end
    end

    class << self
      def bloodhound(object, &block)
        case object
        when Hash
          object.each_pair do |key, value|
            bloodhound(key, &block)
            bloodhound(value, &block)
          end
        when Enumerable
          object.each(&block)
        else
          yield(object)
        end
      end
    end
  end

  class << self
    def main
      pairs.each do |pair|
        puts "Searching through #{pair.model} #{pair.attr_name}"
        pair.find do |klass|
          print "#{klass}, "
        end
        puts
      end
    end

    def pairs
      [].tap do |pairs|
        klasses.each do |model|
          model.attributes_to_define_after_schema_loads.each_pair do |attr_name, args|
            type, _nothing = args
            # ActiveRecord::Type::Boolean is a random taken type
            next unless type.is_a?(Proc) && type.call(Type::Boolean.new).is_a?(Type::Serialized)

            pairs << Pair.new(model: model, attr_name: attr_name)
          end
        end
      end
    end

    def klasses
      Base.descendants
      # exclude things like ApplicationRecord
          .reject(&:abstract_class)
          # Exclude private constants like HABTM_ModelName
          .select { |klass| klass.module_parent.constants.include?(klass.name.split("::").last.to_sym) }
    end
  end
end

WhatISerialize.main
