class MatchUnit < ApplicationRecord
  belongs_to :match

  validates :prefixed_matnr, presence: true
end
