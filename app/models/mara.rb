class Mara < ApplicationRecord
  searchkick highlight: [:description, :barcodes], filterable: [:banner, :article_type]

  self.table_name = "matchable_articles"
  self.inheritance_column = :foo

  # scope :unmatched, -> { joins('LEFT JOIN matched_articles ON matchable_articles.prefixed_matnr = matched_articles.prefixed_matnr').where('matched_articles.prefixed_matnr IS NULL') }
  scope :unmatched, -> { where.not('matched') }
  scope :active, -> { where(active: 1) }

  def self.has_field(col)
    self.column_names.include?(col)
  end

  def search_data
    {
      description: description,
      barcodes: barcodes,
      banner: banner
    }
  end

  def get_specific_field(table, field)
    # return 'Skip' if table =~ /mbew/i
    return "<span title='Blank map'>*map</span>".html_safe if table.blank? || field.blank?
    t_table = banner[0].downcase + "_" + table.downcase

    res = ActiveRecord::Base.connection.execute("select #{field} from #{t_table} WHERE MATNR = '#{self.matnr}' LIMIT 1").first
    return "<span title='Nil result #{table} #{field}'>*</span>".html_safe if res.blank?
    res.first
  rescue ActiveRecord::StatementInvalid => e
    return  "<span title='#{CGI::escapeHTML(e.message)}'>*map</span>".html_safe
  end

  def self.article_types
    select(:article_type).distinct.pluck(:article_type)
  end
end
