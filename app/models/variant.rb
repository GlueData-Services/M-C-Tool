class Variant
  attr_accessor :match, :lookup, :banner_fields, :rows

  def initialize(match_id)
    @match = Match.find(match_id)
    @lookup = Lookup.variant_fields

    @banner_fields = get_select_fields

    @rows = {}
    match.maras.each do |mara|
      @rows[mara.id] = get_variants_for_mara(mara)
    end
    Rails.logger.debug 'Done'
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
    sel_fields = banner_fields[mara.banner[0].downcase].join(', ')
    table = "#{mara.banner[0].downcase}_variant_detail"

    res = ActiveRecord::Base.connection.exec_query("SELECT UNIQUE #{sel_fields} FROM #{table} WHERE GENERIC_MATNR = '#{mara.matnr}'")
    # [res.columns, res.rows]
    res.rows.map do |row|
      Hash[res.columns.zip(row)]
    end
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