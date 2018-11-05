class Api::V1::UsersController < ApplicationController
  def index
   @users = User.all
   render json: @users, status: :accepted
 end

 def show
   @user = User.find(params[:id])
   render json: @user
 end

 def create
    @user=User.new(
      username: params[:username],
      password: params[:password],
      email: params[:email]
    )

    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
 end
end
