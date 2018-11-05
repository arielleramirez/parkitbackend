class ReservationsSerializer < ActiveModel::Serializer
  attributes :id, :name
has_many :parkingspots
end
