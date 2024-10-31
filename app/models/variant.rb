class Variant
  attr_accessor :match, :lookup, :banner_fields, :rows, :skip_fields

  def initialize(match_id)
    @match = Match.find(match_id)
    @lookup = Lookup.variant_fields

    @banner_fields = get_select_fields

    @rows = []
    return @rows if @banner_fields.blank?
    match.maras.each do |mara|
      @rows << get_variants_for_mara(mara)
    end

    @rows.flatten!
    @rows.sort_by! do |e|
      [
        is_number?(e['CHAR1_ATWRT']) ? e['CHAR1_ATWRT'].to_i : e['CHAR1_ATWRT'],
        is_number?(e['CHAR2_ATWRT']) ? e['CHAR2_ATWRT'].to_i : e['CHAR2_ATWRT'],
        is_number?(e['CHAR3_ATWRT']) ? e['CHAR3_ATWRT'].to_i : e['CHAR3_ATWRT']
      ]
    end

    @skip_fields = find_empty_fields if has_variants?
  end

  def has_variants?
    rows.count > 0
  end

  def find_empty_fields
    empties = []

    @rows[0].keys.each do |k|
      all_blank = true
      @rows.each do |r|
        unless r[k].blank?
          all_blank = false
        end
      end

      empties << k if all_blank
    end
    empties
  end

  def is_number?(str)
    str.to_i.to_s == str
  end

  def fix_type(str)
    is_number?(str) ? str : str.to_i
  end

  def keys
    @rows.first.keys
  end

  def get_select_fields
    refs = {}
    %w(g m b).each do |prefix|
      lookup.each do |lup|
        refs[prefix] ||= []
        refs[prefix] << lup.send(prefix + '_field')
      end
    end
    refs
  end

  def get_variants_for_mara(mara)
    return if mara.banner[0].blank?
    banner_prefix = mara.banner[0].downcase
    table = "#{banner_prefix}_var_char"
    variant_fields = Lookup.variant_fields.pluck(banner_prefix + "_field")

    res = ActiveRecord::Base.connection.exec_query("SELECT UNIQUE '#{mara.banner}' AS banner, #{variant_fields.join(', ')} FROM #{table} WHERE GENERIC = '#{mara.matnr}'")
    res.rows.map do |row|
      Hash[res.columns.zip(row)]
    end
  rescue Mysql2::Error => e
    return e.message
  end

  def table_field(mara)
    case mara.banner
    when 'GAME'
      %w[g_table g_field]
    when 'BUILDERS'
      %w[b_table b_field]
    when 'MAKRO'
      %w[m_table m_field]
    end
  end
end