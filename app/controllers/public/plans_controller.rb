class Public::PlansController < ApplicationController

  def index
   @plans = Plan.all.page(params[:page]).per(8)
  end

  def show
    @plan = Plan.find(params[:id])
    @reservation = Reservation.new
  end

  private

  def plan_params
    params.require(:plan).permit(:image, :name, :tax_excluded_fee, :meal, :description)
  end

end
