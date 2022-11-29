class Variant
  attr_accessor :match, :lookup, :banner_fields, :rows

  def initialize(match_id)
    @match = Match.find(match_id)
    @lookup = Lookup.variant_fields

    @banner_fields = get_select_fields

    @rows = {}
    return @rows if @banner_fields.blank?
    match.maras.each do |mara|
      @rows[mara.id] = get_variants_for_mara(mara)
    end
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
    # sel_fields = banner_fields[mara.banner[0].downcase].join(', ')
    table = "#{mara.banner[0].downcase}_variant_detail"

    res = ActiveRecord::Base.connection.exec_query("SELECT UNIQUE * FROM #{table} WHERE GENERIC_MATNR = '#{mara.matnr}'")
    puts res
    # [res.columns, res.rows]
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