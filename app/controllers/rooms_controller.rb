class RoomsController < ApplicationController
  before_action :fetch_room, except: [:new, :create, :index]
  include RoomsHelper
  def new
    @room = Room.new
  end

  def listing
  end
  def amenities
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      flash[:success] = "Saved succesfully"
      redirect_to listing_room_path(@room)
    else
      flash[:danger] = "Invalid content.Try again "
      redirect_back(fallback_location: root_path)
    end
  end

   def update
    @final_data = is_ready_to_publish(@room) ? room_params.merge(is_active: true) : room_params.merge(is_active: false)
    if @room.update_attributes(@final_data)
      flash[:notice] = 'Updated Listing Details!'
    else
      flash[:alert] = 'Update Failed!'
    end
    redirect_back(fallback_location: root_path)
  end

  def photo
    @images = @room.images
  end

  def show
    @room = Room.find(params[:id])
  end
   
    private
    def room_params
      params.require(:room).permit(:home_type, :room_type, :accomodate, :bedroom, :bathroom,:price,:description,:photo,:kitchen,:tv,:internet,:air_conditioner,:heating,:location,:room_name,:user_id,:is_active) 
    end

    def fetch_room
      if params[:room_id].present?
        @room = Room.find(params[:room_id])
      else
        @room = Room.find(params[:id])
      end
    end
end
