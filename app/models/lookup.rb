class Lookup < ApplicationRecord
  audited
  has_many :match_fields

  self.table_name = "lookup_and_operations"

  def self.generate_lookup
    lookups = {}
    # all.select(:id, :updatable, :override, :attribute_short_name).each do |r|
    #   lookups[r[:id]] = r.attributes.except(:id)
    # end
    all.each do |r|
      lookups[r.id] = r
    end
    lookups
  end

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

  def self.sections(current_user)
    tabs = where.not(tab: %w[Unit_of_Measure Variant Info_Characteristics Tax Classification]).order(:sort_order).pluck(:tab)
    filtered_tabs = []
    tabs.each do |t|
      if self.where('tab = ? AND display = 1', t).exists?
        if current_user.can_view?(t.downcase)
          filtered_tabs << t
        end
      end
    end

    filtered_tabs
  end

  def self.fields_for_section(sec)
    where("tab = ? AND display = true", sec).order(:sort_order).pluck(:id)
  end
end
