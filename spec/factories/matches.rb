FactoryBot.define do
  factory :match do
    status { 'awaiting' }

    # association :match_field
    # association :match_units
    # association :match_taxes
    # association :match_characteristics
    # association :match_classes
    # association :match_variants

    factory :match_with_articles do
      transient do
        matched_articles_count { 3 }
      end

      after(:create) do |match, evaluator|
        create_list(:matched_article, evaluator.matched_articles_count, match: match)
      end
    end

    after(:create) do |match|
      create_list(:match_field, 10, match: match)
      create(:match_unit, match: match)
      create(:match_tax, match: match)
      create(:match_characteristic, match: match)
      create(:match_class, match: match)
      create(:match_variant, match: match)
    end
  end
end

# has_many :match_fields, dependent: :destroy
# has_many :match_units, dependent: :destroy
# has_many :match_taxes, dependent: :destroy
# has_many :match_characteristics, dependent: :destroy
# has_many :match_classes, dependent: :destroy
# has_many :match_variants, dependent: :destroy
# has_many :matched_articles, dependent: :destroy
#
# has_many :maras, -> { order('banner') }, through: :matched_articles
# has_many :match_fields
#
# has_many :comments, as: :commentable, dependant: :destroy

