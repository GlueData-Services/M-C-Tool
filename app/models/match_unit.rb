class MatchUnit < ApplicationRecord
  belongs_to :match

  validate :prefixed_matnr, presence: true
end
