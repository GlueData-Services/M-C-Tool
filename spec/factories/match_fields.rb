FactoryBot.define do
  factory :match_field do
    association(:match)
    association(:mara)
    association(:lookup)

    # after(:create) do |match_field|
    #   match_field.match.update!()
    # end
  end
end
