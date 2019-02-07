class Api::V1::ReservationsController < ApplicationController
  def index
   @reservations = Reservation.all
   render json: @reservations, status: :accepted
 end


 def create
  @reservation=Reservation.create(
    user_id: params[:user_id],
    parkingspace_id: params[:parkingspace_id],
    name: params[:name],
    street: params[:street],
    city: params[:city],
    state: params[:state],
    zip: params[:zip],
    lat: params[:lat],
    lng: params[:lng]

  )
  render json: @reservation


 end

  def show
    @reservation = Reservation.find(params[:id])
    render json: @reservation
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    render json: @reservation
  end


end
