class Public::FavoritesController < ApplicationController

  def create
   @plan = Plan.find(params[:plan_id])
   @plan_favorite = Favorite.new(customer_id: current_customer.id, plan_id: params[:plan_id])
   @plan_favorite.save
  end

  def destroy
   @plan = Plan.find(params[:plan_id])
   @plan_favorite = Favorite.find_by(customer_id: current_customer.id, plan_id: params[:plan_id])
   @plan_favorite.destroy
  end
end
