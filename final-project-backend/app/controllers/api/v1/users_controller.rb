class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :update]

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def create
    @user = User.new(user_params)
    if @user.save
      token = encode_token({user_id: @user.id})
      render json: {id: @user, token: token}, status: 202
    else
      render json: { message: "Invalid username or password"}
    end
  end

  def update
    @user = User.find(params[:id])
    if @user
      @user.update(user_params)
      render json: @user, status: 202
    else
      render json: { message: "User Not Found" }, status: 404
    end
  end

  def delete
    @user = User.find(params[:id])
    if @user
      @user.destroy
      render json: {message: "Thank you for using Gi-Go"}, status: 202
    else
      render json: { message: "could not delete account" }, status: 404
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :image, :email, :password, :phone_number, :street_address, :city, :state_territory, :zip_code, :state_territory_dl, :drivers_license_id)
  end

end
