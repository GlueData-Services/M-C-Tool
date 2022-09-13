class Uom
  attr_accessor :match, :lookup

  def initialize(match_id)
    @match = Match.find(match_id)
    @lookup = Lookup.uom_fields
  end

  def sections
    out = {}

    @lookup.each do |l|
      @match.maras.each do |mara|
        out[mara.id] ||= {}

        field = mara.get_specific_field(l.id)
        next unless field.is_a?(Array)

        field.each_with_index do |item, i|
          out[mara.id][i] ||= {}
          out[mara.id][i][l.attribute_name] = item
        end
      end
    end

    fout = []
    out.each do |k, v|
      v.each do |kk, vv|
        fout << { "matnr" => k }.merge(vv)
      end
    end
    fout

    org_out = {}
    fout.each do |v|
      key = "#{v['Numerator_for_conversion_to_base_units_of_measure']} / #{v['Denominator_for_conversion_to_base_unit_of_measure']}"
      org_out[key] ||= []
      org_out[key] << v.except('Numerator_for_conversion_to_base_units_of_measure', 'Denominator_for_conversion_to_base_unit_of_measure')
    end

    org_out
  end

end