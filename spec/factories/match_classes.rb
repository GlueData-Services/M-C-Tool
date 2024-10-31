FactoryBot.define do
  factory :match_class do
    association(:match)
    association(:mara)
  end
end
