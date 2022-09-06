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

  def get_specific_field(lookup_id)
    lookup = Lookup.find(lookup_id)
    table, field = case banner
                   when 'GAME'
                     [lookup.g_table, lookup.g_field]
                   when 'MAKRO'
                     [lookup.m_table, lookup.m_field]
                   when 'BUILDERS'
                     [lookup.b_table, lookup.b_field]
                   end

    return "<span title='Blank map'>*map</span>".html_safe if table.blank? || field.blank?

    res = ActiveRecord::Base.connection.execute("select #{field} from #{table} WHERE MATNR = '#{self.matnr}' LIMIT 1").first
    return "<span title='Nil result #{table} #{field}'>*</span>".html_safe if res.blank?
    res.first
  rescue ActiveRecord::StatementInvalid => e
    return "<span title='#{CGI::escapeHTML(e.message)}'>*map</span>".html_safe
  end

  def self.article_types
    select(:article_type).distinct.pluck(:article_type)
  end
end
