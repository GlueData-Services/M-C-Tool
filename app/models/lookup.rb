class Lookup < ApplicationRecord
  audited
  has_many :match_fields

  self.table_name = "lookup_and_operations"

  def self.name_for(id)
    Lookup.find(id).attribute_name
  end

  def self.overrideable?(id)
    find(id).override == 'Y'
  end

  def self.display(id)
    find(id).display == "D"
  end

  def self.lov?(id)
    find(id).lov == 'LOV'
  end

  def self.selectable(id)
    find(id).updatable == 'S'
  end

  def self.uom_fields
    where(tab: 'Unit_of_Measure', 'Display': 'D').order(:sort_order).all
  end

  def self.variant_fields
    where(tab: 'Variant', 'Display': 'D').order(:sort_order).all
  end

  def self.sections
    tabs = where.not(tab: %w[Unit_of_Measure Variant]).order(:sort_order).distinct.pluck('Tab')
    # tabs = order(:sort_order).distinct.pluck('Tab')
    filtered_tabs = []
    tabs.each do |t|
      if self.where('Tab = ? AND display = "D"', t).exists?
        filtered_tabs << t
      end
    end

    filtered_tabs
  end

  def self.fields_for_section(sec)
    where("Tab = ? AND Display = 'D'", sec).order(:sort_order).distinct.pluck('id')
  end
end
