class RoomsController < ApplicationController
  def index
    @rooms = Room.where(user_id: current_user.id)
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render new_room_path
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  private

    def room_params
      params.require(:room).permit(:room_name, :description, :price, :address, :room_image).merge(user_id: current_user.id)
    end
  
end
