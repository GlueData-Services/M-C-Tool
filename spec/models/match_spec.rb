require 'rails_helper'

RSpec.describe Match, type: :model do

  context 'while building the factories' do
    it 'should create a match with 3 matched articles' do
      match = create(:match_with_articles)
      expect(MatchField.count).to eq(10)
      expect(MatchUnit.count).to eq(1)
      expect(MatchTax.count).to eq(1)
      expect(MatchCharacteristic.count).to eq(1)
      expect(MatchClass.count).to eq(1)
      expect(MatchVariant.count).to eq(1)
      expect(match.matched_articles.count).to eq(3)

      match.destroy

      expect(MatchField.count).to eq(0)
      expect(MatchUnit.count).to eq(0)
      expect(MatchTax.count).to eq(0)
      expect(MatchCharacteristic.count).to eq(0)
      expect(MatchClass.count).to eq(0)
      expect(MatchVariant.count).to eq(0)
    end
  end
end
