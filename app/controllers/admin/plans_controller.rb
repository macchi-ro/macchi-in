class Admin::PlansController < ApplicationController

  def new
    @plan = Plan.new
  end

  def create
   @plan = Plan.new(plan_params)
   @plan.save
   flash[:notice] = "プラン新規登録に成功しました！"
   redirect_to admin_plans_path
  end

  def index
    @plans = Plan.all
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
   @plan = Plan.find(params[:id])
   @plan.update(plan_params)
   flash[:notice] = "プラン更新に成功しました！"
   redirect_to admin_plan_path(@plan.id)
  end

  private
  def plan_params
    params.require(:plan).permit(:image, :name, :tax_excluded_fee, :meal, :description, :sales_status)
  end

end
