class Flat < ApplicationRecord
  geocoded_by :address
  serialize :photos, Array

  validates :name, :address, :description, :number_of_guests, :price_per_night, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
