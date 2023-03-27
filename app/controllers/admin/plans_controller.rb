class Admin::PlansController < ApplicationController
  before_action :authenticate_admin!
  def new
    @plan = Plan.new
  end

  def create
   @plan = Plan.new(plan_params)
     if @plan.save
     flash[:notice] = "プラン新規登録に成功しました！"
     redirect_to admin_plans_path
     else
      render :new
     end
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
   if @plan.update(plan_params)
      flash[:notice] = "プラン情報更新に成功しました！"
      redirect_to admin_plan_path(@plan)
   else
    render :edit
   end
  end

  private
  def plan_params
    params.require(:plan).permit(:image, :name, :tax_excluded_fee, :meal, :description, :sales_status)
  end

end
