class Lookup < ApplicationRecord
  self.table_name = "LOOKUP_AND_OPERATIONS"

  def self.name_for(col)
    logger.debug col
    m = where('G_FIELD = ?', col).first
    logger.debug m
    if m
      return m.send('Attribute_Name')
    else
      col
    end
  end

  def self.display(col)
    where('G_FIELD = ? AND display = "D"', col).count > 0
  end

  def self.sections
    distinct.pluck('Tab')
  end

  def self.fields_for_section(sec)
    where('Tab = ?', sec).distinct.pluck('G_FIELD')
  end
end
