require ('pry-byebug')
require 'date'
require_relative('hotel.rb')
require_relative('hotel_rooms.rb')
require_relative('guests.rb')

#------ CREATE NEW HOTEL ------#
paradise_inn = Hotel.new("Paradise Inn")

#------ CREATE NEW ROOMS ------#
# 3 rooms in my hotel

room_1 = HotelRoom.new(1, "single")
room_2 = HotelRoom.new(2, "double")
room_3 = HotelRoom.new(1, "twin")

#------ CREATE GUESTS ------#
check_in_date = Date.parse('2015-11-28')
check_out_date = Date.parse('2015-11-29')
guest_1 = Guest.new("Smith", 1, "john@email.Com",check_in_date , check_out_date)
guest_2 = Guest.new("Hill", 2, "nick@emAil.com" , '2015-11-28', '2015-11-29')
guest_3 = Guest.new("Jones", 2, "jack@eMail.com", '2015-11-28', '2015-11-29')

#------ ADD ROOMS TO HOTEL CLASS ------#

paradise_inn.add_room(room_1)
paradise_inn.add_room(room_2)
paradise_inn.add_room(room_3)

#------ CHECK IN ------#

room_1.check_in(guest_1, paradise_inn)
room_2.check_in(guest_2, paradise_inn)
room_3.check_in(guest_3, paradise_inn)

room_1.check_out(guest_1, paradise_inn)

#------   TESTING ------#

60.times{print"-"}
puts"\n"
puts "HOTEL INFO"
60.times{print"-"}
puts"\n"
puts "Hotel name:\t\t\t#{paradise_inn.hotel_name}"
puts "Number of rooms:\t\t#{paradise_inn.capacity} rooms"

60.times{print"-"}
puts"\n"

puts "ROOM INFO"
60.times{print"-"}
puts"\n"
puts "Room 1:"
puts "Room number:\t\t\t#{room_1.room_number}"
puts "Guest details:\t\t\t#{room_1.guest_details}"
puts "Room type:\t\t\t#{room_1.room_type}"
puts "Number of occupants:\t\t#{room_1.number_of_occupants}"
60.times{print"-"}
puts"\n"
puts "Room number:\t\t\t#{room_2.room_number}"
puts "Guest details:\t\t\t#{room_2.guest_details}"
puts "Room type:\t\t\t#{room_2.room_type}"
puts "Number of occupants:\t\t#{room_2.number_of_occupants}"
60.times{print"-"}
puts"\n"
puts "Room number:\t\t\t#{room_3.room_number}"
puts "Guest details:\t\t\t#{room_3.guest_details}"
puts "Room type:\t\t\t#{room_3.room_type}"
puts "Number of occupants:\t\t#{room_3.number_of_occupants}"
60.times{print"-"}
puts"\n"

puts "GUEST INFO"
60.times{print"-"}
puts"\n"
puts "Guest 1:"
puts "Guest booking name:\t\t#{guest_1.last_name}"
puts "Number in party\t\t\t#{guest_1.party_number}"
puts "Guest email address:\t\t#{guest_1.email_address}"
60.times{print"-"}
puts"\n"
puts "Guest 2:"
puts "Guest booking name:\t\t#{guest_2.last_name}"
puts "Number in party\t\t\t#{guest_2.party_number}"
puts "Guest email address:\t\t#{guest_2.email_address}"
60.times{print"-"}
puts"\n"
puts "Guest 3:"
puts "Guest booking name:\t\t#{guest_3.last_name}"
puts "Number in party\t\t\t#{guest_3.party_number}"
puts "Guest email address:\t\t#{guest_3.email_address}"
60.times{print"-"}
puts"\n"

binding.pry;''