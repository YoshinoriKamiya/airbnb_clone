class ImagesController < ApplicationController
  def create
    @room = Room.find(params[:room_id])
    if params[:images]
      params[:images].each do |img|
        @room.images.create(image: img)
      end
      @images = @room.images
      redirect_back(fallback_location: request.referer, notice: 'Images added successfully')
    end
  end

  def destroy
    @images = Image.find(params[:id])
    @room = Room.find(params[:room_id])
    if @images.destroy
      @room.update_attribute(:is_active, false) if !@room.images.any?
      redirect_back(fallback_location: request.referer, alert: "Image deleted...")
    end
  end
end