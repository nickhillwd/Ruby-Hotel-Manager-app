class Hotel

  attr_reader :hotel_name, :rooms, :guests

  def initialize(hotel_name)
    @hotel_name = hotel_name
    @rooms = []
    @guests = {}
  end

  def capacity
    @rooms.size
  end

  #def free_rooms
  #  @number_of_rooms - @rooms.length
  #end

  def add_room(room)
    @rooms[room.room_number] = room
  end

end