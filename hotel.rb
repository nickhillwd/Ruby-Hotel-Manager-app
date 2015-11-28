class Hotel

  attr_reader :hotel_name, :number_of_rooms, :rooms, :guests

  def initialize(hotel_name)
    @hotel_name = hotel_name
    @number_of_rooms = 5
    @rooms = []
    @guests = {}
  end

  def capacity
    @number_of_rooms
  end

  def free_rooms
    @number_of_rooms - @rooms.length
  end

end