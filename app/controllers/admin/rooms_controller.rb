class Admin::RoomsController < ApplicationController

  def create
   @room = Room.new(room_params)
   @room.save
   @name = "default form value"
   redirect_to admin_rooms_path
  end

  def index
   @rooms = Room.all
  end

  def edit
   @room = Room.find(params[:id])
  end

  def update
   @room = Room.find(params[:id])
   @room.update(room_params)
   flash[:notice] = "部屋情報の更新に成功しました！"
   redirect_to admin_rooms_path
  end

  private
  def room_params
    params.require(:room).permit(:name, :image)
  end

end
