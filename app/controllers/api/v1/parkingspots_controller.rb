class Api::V1::ParkingspotsController < ApplicationController
  def index
    @parkingspots = Parkingspot.all
    render json: @parkingspots, status: :accepted
  end
  

 def create
    @parkingspot=Parkingspot.new(
      reservation_id: params[:reservation_id],
      garage_id: params[:garage_id]
    )
    if @parkingspot.save
      render json: @parkingspot, status: :accepted
    else
      render json: { errors: @parkingspot.errors.full_messages }, status: :unprocessible_entity
    end
 end

 def show
   @parkingspot = Parkingspot.find(params[:id])
   render json: @parkingspot
 end

 def destroy
   @parkingspot = Parkingspot.find(params[:id].to_i)
   if @parkingspot.user_id == params[:user_id].to_i
     @parkingspot.destroy
     render json: @parkingspot
   else
     @reservation = @parkingspot.reservations.where({collector_id: params[:user_id].to_i })
     @reservation.destroy_all
     render json: @reservation
   end
 end
end
