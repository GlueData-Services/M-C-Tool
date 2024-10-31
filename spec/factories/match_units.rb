FactoryBot.define do
  factory :match_unit do
    association(:match)
    prefixed_matnr { '1234567890' }
  end
end
