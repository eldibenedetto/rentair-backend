class Api::V1::AuthController < ApplicationController

 skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}, status: 202
    else
      render json: { message: "Invalid username/password" }, status: 401
    end
  end

  def show
    if !!current_user
      render json: {user: current_user, token: request.headers["Authorization"].split(" ")[1]}, status: 202
    else
      render json: { message: "User Not Found" }, status: 401
    end
  end

end
