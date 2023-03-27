class Admin::RoomsController < ApplicationController
  before_action :authenticate_admin!
  def create
   @room = Room.new(room_params)
    if @room.save
       @name = "default form value"
       redirect_to admin_rooms_path
    else
       @rooms = Room.all
       render :index
    end
  end

  def index
   @rooms = Room.all
   @room = Room.new
  end

  def edit
   @room = Room.find(params[:id])
  end

  def update
   @room = Room.find(params[:id])
   if @room.update(room_params)
      flash[:notice] = "部屋情報の更新に成功しました！"
      redirect_to admin_rooms_path
   else
    render :edit
   end
  end

  private
  def room_params
    params.require(:room).permit(:name, :description, :image)
  end

end
