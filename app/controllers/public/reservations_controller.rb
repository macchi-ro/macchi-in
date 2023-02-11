class Public::ReservationsController < ApplicationController

 def new
  @plan = Plan.find(params[:plan_id])
  @reservation = Reservation.new
 end

 def create
  @reservation = Reservation.new(reservation_params)
  @reservation.save
  redirect_to reservations_complete_path
 end

 def check
  @plan = Plan.find(params[:plan_id])
  @reservation = Reservation.new(reservation_params)
 end

 def index
  @reservations = current_customer.reservations.all
 end

  private
  def reservation_params
    params.require(:reservation).permit(:lodgment_date, :nights_number, :count, :room_number, :note, :including_tax_total_amount, :room_id, :plan_id, :customer_id)
  end
end
