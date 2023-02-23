class Public::ReservationsController < ApplicationController
 before_action :authenticate_customer!
 def new
  @plan = Plan.find(params[:plan_id])
  @reservation = Reservation.new
 end

 def create
  @reservation = Reservation.new(reservation_params)
    if @reservation.save
     redirect_to reservations_complete_path
    else
     @reservation = Reservation.new
     @plan = Plan.find(params[:plan_id])
     render :new
    end
 end

 def check
  @plan = Plan.find(params[:plan_id])
  @reservation = Reservation.new(reservation_params)
    if @reservation.invalid?
       render :new
    end
 end

 def index
  @reservations = current_customer.reservations.all
 end

  private
  def reservation_params
    params.require(:reservation).permit(:lodgment_date, :nights_number, :count, :room_number, :note, :including_tax_total_amount, :room_id, :plan_id, :customer_id)
  end
end
