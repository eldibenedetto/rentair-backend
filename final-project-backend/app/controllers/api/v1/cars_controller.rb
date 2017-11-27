class Api::V1::CarsController < ApplicationController

  skip_before_action :authorized, only: [:index, :search, :create, :delete, :show]

  def index
    @cars = Car.all
    render json: @cars, status: 200
  end

  def search
    if params[:req_start_date] && params[:req_end_date]
      @cars = Car.available(params[:req_start_date].to_date, params[:req_end_date].to_date)
      render json: @cars, status: 202
    else
      render json: {message: "Please enter your search terms."}, status: 406
    end
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      render json: @car, status: 202
    else
      render json: { message: "Invalid Car" }
    end
  end

  def show
    @car = Car.find(params[:id])
    if @car
      render json: @car, status: 202
    else
      render json: { message: "Car Not Found" }, status: 404
    end
  end

  def update
    @car = Car.find(params[:id])
    if @car
      @car.update(car_params)
      render json: @car, status: 202
    else
      render json: { message: "Car Not Found" }, status: 404
    end
  end

  def delete
    @car = Car.find(params[:id])
    if @car
      @car.destroy
      @cars = Car.all
      render json: @cars, status: 202
    else
      render json: { message: "Car Not Found." }, status: 404
    end
  end

  private

  def car_params
    params.require(:car).permit(:owner_id, :make, :model, :year, :image, :price, :address)
  end

end
