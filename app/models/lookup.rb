class Lookup < ApplicationRecord
  audited
  has_many :match_fields

  self.table_name = "lookup_and_operations"

  def self.name_for(id)
    Lookup.find(id).attribute_name
  end

  def self.overrideable?(id)
    find(id).override == true
  end

  def self.display(id)
    find(id).display == true
  end

  def self.lov?(id)
    find(id).lov == 'LOV'
  end

  def self.selectable?(id)
    sel = Lookup.find(id)
    sel.updatable?
  end

  def self.uom_fields
    where(tab: 'Unit_of_Measure', 'Display': true).order(:sort_order).all
  end

  def self.variant_fields
    where(tab: 'Variant', 'Display': true).order(:sort_order).all
  end

  def self.tax_fields
    where(tab: 'Tax')
  end

  def self.sections
    tabs = where.not(tab: %w[Unit_of_Measure Variant Info_Characteristics Tax Classification]).order(:sort_order).distinct.pluck(:tab)
    # tabs = order(:sort_order).distinct.pluck('Tab')
    filtered_tabs = []
    tabs.each do |t|
      if self.where('tab = ? AND display = 1', t).exists?
        filtered_tabs << t
      end
    end

    filtered_tabs
  end

  def self.fields_for_section(sec)
    where("tab = ? AND display = true", sec).order(:sort_order).distinct.pluck(:id)
  end
end
