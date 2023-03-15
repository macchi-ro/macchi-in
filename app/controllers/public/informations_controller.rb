class Public::InformationsController < ApplicationController
  before_action :authenticate_customer!

  def index
   @informations = Information.all.order(created_at: :desc)
  end

  def show
   @information = Information.find(params[:id])
  end

  private
  def information_params
    params.require(:information).permit(:title, :content)
  end
end
