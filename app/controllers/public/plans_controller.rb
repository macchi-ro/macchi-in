class Public::PlansController < ApplicationController

  def search
    # params[:q]のqには検索フォームに入力した値が入る
    @q = Plan.ransack(params[:q])
    @plans = @q.result(distinct: true)
  end

  def index
    @q = Plan.ransack(params[:q])
    @ransack_plans = @q.result(distinct: true)
    @plans = @q.result(distinct: true).page(params[:page]).per(8)
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
