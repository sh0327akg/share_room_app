class ReservationsController < ApplicationController
  def create
    room = Room.find(params[:room_id])
    if current_user == room.user
      redirect_to rooms_path
    else
      start_date = Date.parse(reservation_params[:start_date])
      end_date = Date.parse(reservation_params[:end_date])
      days = (end_date - start_date).to_i + 1
      @reservation = current_user.reservations.new(reservation_params)
      @reservation.room_id = room.room_id
      @reservation.amount = room.price * days
      @reservation.save
      redirect_to root_path
    end
  end

  private
    def reservation_params
      params.require(:reservation).permit(:start_date, :end_date, :amount, :number_of_people)
    end
end