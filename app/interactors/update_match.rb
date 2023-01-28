class UpdateMatch
  include Interactor

  def call
    match = Match.find(context.match_id)
    match_params = context.field_params
    unit_params = context.unit_params
    tax_params = context.tax_params
    char_params = context.char_params
    class_params = context.class_params
    variant_params = context.variant_params

    Match.transaction do
      modified = false
      match_params.each do |lookup_id, match_details|
        field = match.match_fields.where(lookup_id: lookup_id).exists? ?
                  match.match_fields.where(lookup_id: lookup_id).first :
                  match.match_fields.new(lookup_id: lookup_id)
        if match_details['mara_id'].present?
          match_details['overridden_value'] = nil
        end
        modified = true if field&.update(match_details) # Cant set it to update's return, because the last one may fail
      end
      match.reload

      unit_params.each do |unit_record|
        next if unit_record['prefixed_matnr'].blank?
        match_unit = match.match_units.find_or_initialize_by(match_id: match.id, quantity: unit_record[:quantity])
        match_unit.update(unit_record)
      end

      # This just deletes all countries which are not in the params, we must assume that they ahve been deselected
      # in favour of other countries which WILL appear in these records
      tax_countries = tax_params.to_h.keys
      match.match_taxes.where.not(tax_country: tax_countries).delete_all

      tax_params.each do |tax_record|
        match_tax = match.match_taxes.find_or_initialize_by(match_id: match.id, tax_country: tax_record[0])
        match_tax.update(tax_record[1])
      end

      match.match_characteristics.delete_all
      char_params.each do |characteristic|
        match_char = match.match_characteristics.find_or_initialize_by(characteristic)
        match_char.save!
      end

      match.match_classes.delete_all
      class_params.each do |cls|
        match_class = match.match_classes.find_or_initialize_by(cls)
        match_class.save!
      end

      match.match_variants.delete_all
      variant_params.each do |matnr, variant|
        match_variant = match.match_variants.find_or_initialize_by(matnr: matnr, variant_number: variant)
        match_variant.save!
      end

      match.update(status: :in_progress) if modified && context.status != 'complete'
      match.update(status: :complete) if context.status == 'complete'
    end
    context.match = match
  end
end
