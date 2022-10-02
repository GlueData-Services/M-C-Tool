class UpdateMatch
  include Interactor

  def call
    match = Match.find(context.match_id)
    match_params = context.field_params
    unit_params = context.unit_params



    Match.transaction do
      modified = false
      match_params.each do |lookup_id, match_details|
        field = match.match_fields.where(lookup_id: lookup_id).exists? ?
                  match.match_fields.where(lookup_id: lookup_id).first :
                  match.match_fields.new(lookup_id: lookup_id)
        if match_details['mara_id'].present?
          match_details['overridden_value'] = nil
        end
        modified = true if field.update(match_details) # Cant set it to update's return, because the last one may fail
      end
      match.reload
      match.update!(status: 'in_progress') if modified

      unit_params.each do |unit_record|
        Rails.logger.debug unit_record.inspect.yellow
        next if unit_record['prefixed_matnr'].blank?
        match_unit = match.match_units.find_or_initialize_by(match_id: match.id, quantity: unit_record[:quantity])
        match_unit.update(unit_record)
        Rails.logger.debug match_unit.inspect.green
        Rails.logger.debug match_unit.persisted?.inspect.red
      end
    end

    context.match = match
  end
end
