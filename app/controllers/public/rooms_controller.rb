class Public::RoomsController < ApplicationController
  before_action :authenticate_customer!
  def index
    @rooms = Room.all
  end
end
