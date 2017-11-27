class Api::V1::PendingReservationsController < ApplicationController

  skip_before_action :authorized, only: [:index]

  def index
    @pending_reservations = PendingReservation.all
    render json: @pending_reservations, status: 200
  end

  def create
    @pending_reservation = PendingReservation.new(pending_reservation_params)
    if @pending_reservation.save
      render json: @pending_reservation, status: 202
    else
      render json: { message: "Invalid Reservation" }
    end
  end

  def delete
    @pending_reservation = PendingReservation.find(params[:id])
    if @pending_reservation
      @pending_reservation.delete
      render json: {message: "This reservation has been declined by the owner."}, status: 202
    else
      render json: {message: "Reservation Not Found."}, status: 404
    end
  end

  private

  def pending_reservation_params
    params.require(:pending_reservation).permit(:guest_id, :car_id, :start_date, :pickup_time, :end_date, :dropoff_time, :description)
  end

end
