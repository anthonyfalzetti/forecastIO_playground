class Location < ApplicationRecord
  validates :address, uniqueness: { case_sensitive: false }
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def update_temperature
    self.update_attributes!(tempature: current_temperature(self.latitude, self.longitude))
  end

  def current_temperature(latitude, longitude)
    ForecastIO.forecast(latitude, longitude).currently["temperature"]
  end
end
