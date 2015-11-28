class Hotel

  attr_reader :hotel_name
  attr_accessor :guest_history, :guests, :rooms

  def initialize(hotel_name)
    @hotel_name = hotel_name
    @rooms = []
    @guests = {}
    @guest_history = {}
  end

  def room_count
    @rooms.length
  end

  def capacity
    propper_array = @rooms.compact
    propper_array.each {|room| room}.map do |key, type|
      type.room_type
    end
    #occupant_count.inject{|sum,x| sum + x}
  end

  #def free_rooms
  #  @number_of_rooms - @rooms.length
  #end

  def add_room(room)
    @rooms[room.room_number] = room
    @rooms.compact!
  end

  def add_checked_in_guests(guest)
    @guests[guest.last_name] = guest
  end

  def add_guest_history(guest) 
    @guest_history[guest.last_name] = guest
  end

  def number_checked_in
    occupant_count = @guests.map do |key, number|
      number.party_number
    end
    occupant_count.inject{|sum,x| sum + x}
  end
end