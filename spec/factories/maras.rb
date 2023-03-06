FactoryBot.define do
  factory :mara do
    banner { Faker::Lorem.sample %w[GAME MAKRO BUILDERS] }
    type { 'SINGLE' }
    article_type { 'Trading Goods' }
    matnr { Faker::Number.number(digits: 10) }
    prefixed_matnr { "#{banner[0]}#{matnr}" }
    description { Faker::Lorem.sentence }
    brand_desc { Faker::Lorem.word }
  end
end
