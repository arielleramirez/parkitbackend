class User < ApplicationRecord
  has_many :reservations
  has_many :parkingspots, through: :reservations
end
