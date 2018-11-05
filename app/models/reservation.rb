class Reservation < ApplicationRecord
  has_many :users
has_many :parkingspots
has_many :garages, through: :parkingspots
end
