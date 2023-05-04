class Restaurant < ApplicationRecord

  scope :filter_by_city, -> ( city ) { where('lower(city) LIKE :city', city: "#{city.strip.downcase}%") }
  scope :filter_by_name, -> ( name ) { where('lower(name) LIKE :name', name: "#{name.strip.downcase}%") }

  has_many :reservations
  belongs_to :user
end
