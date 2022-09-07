class Lookup < ApplicationRecord
  audited

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

  def self.lookup_value(table, col, key)
    # l_table = where('G_FIELD = :c AND G_TABLE = :t AND display = "L"', c: col, t: table).first.lookup_table
    # res = ActiveRecord::Base.connection.execute("SELECT ").first
  end

  def self.selectable(id)
    find(id).updatable == 'S'
  end

  def self.sections
    tabs = order(:sort_order).distinct.pluck('Tab')
    filtered_tabs = []
    tabs.each do |t|
      if self.where('Tab = ? AND display = "D"', t).exists?
        filtered_tabs << t
      end
    end

    filtered_tabs
  end

  def self.fields_for_section(sec)
    where("Tab = ? AND Display = 'D'", sec).distinct.pluck('id')
  end
end
