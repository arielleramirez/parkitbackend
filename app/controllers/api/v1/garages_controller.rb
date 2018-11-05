class Api::V1::GaragesController < ApplicationController
  def index
  @garages = Garage.all
  render json: @garages
end

def show
  @garages = Garage.find(params[:id])
  render json: @garages
end
end
