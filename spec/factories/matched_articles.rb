FactoryBot.define do
  factory :matched_article do
    prefixed_matnr { '1234567890' }
    association(:match)
    association :mara
  end
end
