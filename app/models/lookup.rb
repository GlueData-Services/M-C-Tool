class Lookup < ApplicationRecord
  self.table_name = "lookup_and_operations"

  def self.name_for(col)
    m = where('G_TABLE = ? AND G_FIELD = ?', col[0], col[1]).first
    if m
      return m.send('Attribute_Name')
    else
      col
    end
  end

  def self.display(table, col)
    where('G_FIELD = ? AND display = "D"', col).count > 0
  end

  def self.sections
    tabs = distinct.pluck('Tab')
    filtered_tabs = []
    tabs.each do |t|
      if self.where('Tab = ? AND display = "D"', t).exists?
        filtered_tabs << t
      end
    end

    filtered_tabs
  end

  def self.fields_for_section(sec)
    where("Tab = ? AND Display = 'D'", sec).distinct.pluck('G_TABLE', 'G_FIELD')
  end
end
