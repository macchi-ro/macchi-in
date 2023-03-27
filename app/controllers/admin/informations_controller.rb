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
   @information = Information.new
  end

  def edit
   @information = Information.find(params[:id])
  end

  def update
   @information = Information.find(params[:id])
   if @information.update(information_params)
      flash[:notice] = "お知らせ情報の更新に成功しました！"
      redirect_to admin_informations_path
   else
    render :edit
   end
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
