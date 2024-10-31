# frozen_string_literal: true

module Problems
  # Basic should include variants
  PROBLEMS = [
    OpenStruct.new(name: 'refer_to_buyers', description: 'Buyers', tabs: %w[basic logistics variants]),
    OpenStruct.new(name: 'refer_to_merch', description: 'Merchandise Controller/Buyers Assistant', tabs: %w[basic logistics variants]),
    OpenStruct.new(name: 'refer_to_replenishment', description: 'Replenishment Analysts', tabs: %w[basic logistics variants]),
    OpenStruct.new(name: 'refer_to_finance', description: 'Finance/Tax Team', tabs: %w[basic logistics variants tax]),
    OpenStruct.new(name: 'refer_to_master_data', description: 'The CMD specialist team', tabs: %w[*]),
  ]
end
