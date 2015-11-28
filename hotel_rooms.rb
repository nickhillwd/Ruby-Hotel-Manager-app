class HotelRoom

  attr_reader :room_number, :guest_details, :room_type, :number_of_guests

  def initialize(room_number, room_type)
    @room_number = room_number.to_i
    @guest_details = {}
    @room_type = room_type.downcase
  end

  def number_of_occupants
    occupant_count = @guest_details.map do |key, number|
      number.party_number
    end
    occupant_count.at(0)
  end

  def check_in(guest, hotel)
    if hotel.rooms == 3
      puts "Paradise inn only has 3 rooms to allocate"
    else
      @guest_details[guest.last_name] = guest
      hotel.add_checked_in_guests(guest)
    end
  end

  def check_out(guest, hotel)
    hotel.add_guest_history(guest)
    @guest_details = {}
  end

end
