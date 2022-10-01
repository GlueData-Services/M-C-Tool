class Uom
  attr_accessor :match, :lookup

  NUM = 'Numerator'
  DEN = 'Denominator'

  def initialize(match_id)
    @match = Match.find(match_id)
    @lookup = Lookup.uom_fields
  end

  def sections
    loaded_uoms = {}

    @lookup.each do |uom_field|
      @match.maras.each do |mara|
        loaded_uoms[mara.id] ||= {}

        ##
        # UOM fields generally reference arrays of keys or values, eg [EA, PAK, LAY], every uom_field, for the same mara,
        # should have the same number of fields.
        # So we load the values from mara for the current field, and create a new "MARA" and for each variation, create a
        # sub-mara for that field. Which should coincide with a NUM/DEM combination
        field = mara.get_specific_field(uom_field.id)
        next unless field.is_a?(Array)

        field.each_with_index do |item, i|
          loaded_uoms[mara.id][i] ||= {}
          loaded_uoms[mara.id][i][uom_field.attribute_short_name] = item
        end
      end
    end

    split_records = []
    loaded_uoms.each do |k, v|
      v.each do |kk, vv|
        split_records << { "matnr" => k }.merge(vv)
      end
    end

    ##
    # Sorts the UoM entries by Size, calculated by Numerator * Denominator, then groups the records from the various
    # maras into those categories
    # split_records.sort_by!{|e| e[NUM].to_i * e[DEN].to_i}
    split_records.sort_by!{|e| e['QTY_per_LUN']}

    org_out = {}
    split_records.each do |v|
      key = "#{v[NUM]} / #{v[DEN]}"
      org_out[key] ||= []
      org_out[key] << v.except(NUM, DEN)
    end

    org_out
  end
end