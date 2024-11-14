class SourceName < ApplicationRecord
  audited only: [:name, :available]

  validates :name, :available, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
