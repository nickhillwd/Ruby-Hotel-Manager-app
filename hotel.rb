class Hotel

  attr_reader :hotel_name, :number_of_rooms, :rooms, :guests
  
  def initialize(hotel_name)
    @hotel_name = hotel_name
    @number_of_rooms = 3
    @rooms = []
    @guests = {}
  end
end