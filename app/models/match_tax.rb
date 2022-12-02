class MatchTax < ApplicationRecord
  belongs_to :match

  def self.is_persisted?(tax_country, tax_classification, tax_table)
    exists?(tax_country: tax_country, tax_classification: tax_classification, tax_table: tax_table)
  end
end
