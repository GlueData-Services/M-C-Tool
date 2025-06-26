class SourceLookup < ApplicationRecord
  validates :SOURCE_SYSTEM, presence: true, uniqueness: true, length: {minimum: 2, maximum: 50}
  validates :BANNER_NAME, presence: true, length: {minimum: 2, maximum: 50}
  validates :SOURCE_TABLES, presence: true, uniqueness: true, length: {minimum: 3, maximum: 50}


  def self.banner_names
    all.pluck(:banner_name)
  end

  def self.source_systems
    all.pluck(:source_system)
  end
end
