class License < ApplicationRecord
  validates :client_name, presence: true, length: {minimum: 4, maximum: 50}
  validates :license_key, presence: true, uniqueness: true, length: {minimum: 600, maximum: 1200}

end
