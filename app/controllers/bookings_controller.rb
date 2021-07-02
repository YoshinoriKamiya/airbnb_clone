class BookingsController < ApplicationController
def create
room = Room.find(params[:room_id])
start_date = Date.parse(booking_params[:check_in_date])
end_date = Date.parse(booking_params[:check_out_date])
number_of_nights = (end_date - start_date).to_i
total_computed_price = (number_of_nights * room.price).to_i
final_params = booking_params.merge(price: room.price, total_price: total_computed_price)
  @booking = current_user.bookings.new(final_params)
 
      if @booking.save
        flash[:notice] = 'Booking Saved..'
      else
        flash[:alert] = 'Booking Failed.. Try again later'
        number_of_nights = check_in_date == check_out_date ? 1 : (check_out_date - check_in_date).to_i
      end
      redirect_back(fallback_location: root_path)
    end
  private
  def booking_params
    params.require(:booking).permit(:room_id, :check_in_date, :check_out_date)
  end
end
