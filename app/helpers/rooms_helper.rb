module RoomsHelper
  
  def is_ready_to_publish(room)
    room.location.present? && room.description.present? && room.room_name.present? && room.price.present? && room.images.present?
  end

end
