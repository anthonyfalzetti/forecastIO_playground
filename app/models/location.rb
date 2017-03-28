class Location < ApplicationRecord
  validates :zip, uniqueness: { case_sensitive: false }
  validates :zip, presence: true
end
