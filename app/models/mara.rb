class Mara < ApplicationRecord
  searchkick
  self.table_name = "matchable_articles"
  self.inheritance_column = :foo

  # scope :unmatched, -> { joins('LEFT JOIN matched_articles ON matchable_articles.prefixed_matnr = matched_articles.prefixed_matnr').where('matched_articles.prefixed_matnr IS NULL') }
  scope :unmatched, -> { where.not('matched') }

  def self.has_field(col)
    self.column_names.include?(col)
  end

  def search_data
    {
      description: description,
      barcodes: barcodes.split(',')
    }
  end
end
