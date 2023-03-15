class Admin::InformationsController < ApplicationController

  before_action :authenticate_admin!

  def create
  @information = Information.new(information_params)
    if @information.save
      redirect_to admin_informations_path
    else
      @informations = Information.all
      render :index
    end
  end

  def index
   @informations = Information.all
  end

  def edit
   @information = Information.find(params[:id])
  end

  def update
   @information = Information.find(params[:id])
   @information.update(information_params)
   redirect_to admin_informations_path
  end

  def destroy
   @information = Information.find(params[:id])
   @information.destroy
   redirect_to admin_informations_path
  end

  private
  def information_params
    params.require(:information).permit(:title, :content)
  end

end
