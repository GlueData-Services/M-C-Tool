class Mara < ApplicationRecord
  searchkick highlight: [:description, :barcodes], filterable: [:banner, :article_type]

  has_many :match_fields

  self.table_name = "matchable_articles"
  self.inheritance_column = :foo

  # scope :unmatched, -> { joins('LEFT JOIN matched_articles ON matchable_articles.prefixed_matnr = matched_articles.prefixed_matnr').where('matched_articles.prefixed_matnr IS NULL') }
  scope :unmatched, -> { where.not('matched') }
  scope :active, -> { where(active: true) }

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

  def get_value(table, field)
    return "<span title='Blank map'>*map</span>".html_safe if table.blank? || field.blank?
    res = ActiveRecord::Base.connection.execute("select #{field} from #{table} WHERE MATNR = '#{self.matnr}'")
    return "<span title='Nil result #{table} #{field}'>*</span>".html_safe if res.blank?

    res.count == 1 ? res.first.first : res.map { |r| r[0].blank? ? 'nil' : r[0] }
  rescue ActiveRecord::StatementInvalid => e
    return "<span title='#{CGI::escapeHTML(e.message)}'>*map</span>".html_safe
  end

  def get_lookup_value(lookup, val)
    return nil if val.blank?
    mapping = lookup.split(':')
    res = ActiveRecord::Base.connection.exec_query("SELECT #{mapping[2]} FROM #{mapping[0]} WHERE #{mapping[1]} = '#{val}'")
    case res.rows.count
    when 0
      'Missing value'
    when 1
      res.rows[0][0]
    else
      'Too many values'
    end
  rescue ActiveRecord::StatementInvalid => e
    return e.message
  end

  def get_specific_field(lookup_id)
    lookup = Lookup.find(lookup_id)
    case banner
    when 'GAME'
      val = get_value(lookup.g_table, lookup.g_field)
      lookup.g_lookup.present? ? get_lookup_value(lookup.g_lookup, val) : val  
    when 'MAKRO'
      val = get_value(lookup.m_table, lookup.m_field)
      lookup.m_lookup.present? ? get_lookup_value(lookup.m_lookup, val) : val
    when 'BUILDERS'
      val = get_value(lookup.b_table, lookup.b_field)
      lookup.b_lookup.present? ? get_lookup_value(lookup.b_lookup, val) : val
    end
  end

  def self.article_types
    select(:article_type).distinct.pluck(:article_type)
  end
end
