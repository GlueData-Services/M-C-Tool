class Lookup < ApplicationRecord
  self.table_name = "lookup_and_operations"

  def self.name_for(col)
    m = where('G_TABLE = ? AND G_FIELD = ?', col[0], col[1]).first
    if m
      m.send('Attribute_Name').blank? ? 'Missing' : m.send('Attribute_Name')
    else
      col[0].blank? || col[1].blank? ? 'Missing' : col.join('-')
    end
  end

  def self.overrideable?(col)
    return false if nil.in?(col)
    where('G_TABLE = ? AND G_FIELD = ?', col[0], col[1]).first.override == 'Y'
  end

  def self.display(table, col)
    where('G_FIELD = :c AND G_TABLE = :t AND display = "D"', c: col, t: table).count > 0
  end

  def self.selectable(col)
    return false if nil.in?(col)
    where('G_TABLE = ? AND G_FIELD = ?', col[0], col[1]).first.updateable == 'S'
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
