class HotelRoom

  attr_reader :room_number, :guest_details, :room_type, :number_of_guests

  def initialize(room_number, room_type)
    @room_number = room_number
    @guest_details = {}
    @room_type = room_type
    @number_of_guests = 0
  end
end