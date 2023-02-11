class Admin::ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
     @reservation = Reservation.find(params[:id])
     @reservation.update(reservation_params)
     redirect_to admin_reservation_path(@reservation)
  end

  def destroy
     @reservation = Reservation.find(params[:id])
     @reservation.destroy
     redirect_to admin_reservations_path
  end

  private
  def reservation_params
    params.require(:reservation).permit(:lodgment_date, :nights_number, :count, :room_number, :note, :including_tax_total_amount, :room_id, :plan_id, :customer_id)
  end
end
