FactoryBot.define do
  factory :match_characteristic do
    association(:match)
    association(:mara)
  end
end
