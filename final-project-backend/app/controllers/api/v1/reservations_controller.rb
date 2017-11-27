class Api::V1::ReservationsController < ApplicationController

  skip_before_action :authorized, only: [:index]

  def index
    @reservations = Reservation.all
    render json: @reservations, status: 200
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      pending_reservation = PendingReservation.find(params[:id])
      pending_reservation.delete
      render json: @reservation, status: 202
    else
      render json: { message: "Invalid Reservation" }
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:guest_id, :car_id, :start_date, :pickup_time, :end_date, :dropoff_time, :description)
  end

end
