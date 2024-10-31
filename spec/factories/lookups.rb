FactoryBot.define do
  factory :lookup do
    id { Lookup.maximum(:id).to_i + 1 }
  end
end
