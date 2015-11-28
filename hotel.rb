class Hotel

  attr_reader :hotel_name, :rooms
  attr_accessor :guest_history, :guests

  def initialize(hotel_name)
    @hotel_name = hotel_name
    @rooms = []
    @guests = {}
    @guest_history = {}
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

  def add_checked_in_guests(guest)
    @guests[guest.last_name] = guest
  end

  def add_guest_history(guest) 
    @guest_history[guest.last_name] = guest
  end
end