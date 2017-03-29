class Location < ApplicationRecord
  validates :address, uniqueness: { case_sensitive: false }
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
