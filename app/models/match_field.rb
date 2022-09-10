class MatchField < ApplicationRecord
  audited
  belongs_to :match
  belongs_to :mara, foreign_key: :mara_id
  belongs_to :lookup

  def overridden?
    self.overridden_value.present?
  end

  def get_value
    mara = Mara.find_by(prefixed_matnr: self.mara_id)
    return '' if mara.blank?
    mara.get_specific_field(self.lookup_id)
  end
end
