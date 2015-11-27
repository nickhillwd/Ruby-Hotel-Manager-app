require ('pry-byebug')
require_relative('hotel.rb')
require_relative('hotel_rooms.rb')
require_relative('guests.rb')

#------ CREATE NEW HOTEL ------#
paradise_inn = Hotel.new("Paradise Inn")
puts "Hotel is called '#{paradise_inn.hotel_name}'"
puts "paradise Inn has #{paradise_inn.number_of_rooms} rooms"
60.times{print"-"}
puts"\n"

#------ CREATE NEW ROOMS ------#
# 3 rooms in my hotel

room_1 = HotelRoom.new(1, "single")
room_2 = HotelRoom.new(2, "double")
room_3 = HotelRoom.new(1, "twin")

puts "Room 1:"
puts "Room number:\t\t\t#{room_1.room_number}"
puts "Guest details:\t\t\t#{room_1.guest_details}"
puts "Room type:\t\t\t#{room_1.room_type}"
puts "Number of occupants:\t\t#{room_1.number_of_guests}"
60.times{print"-"}
puts"\n"
puts "Room number:\t\t\t#{room_2.room_number}"
puts "Guest details:\t\t\t#{room_2.guest_details}"
puts "Room type:\t\t\t#{room_2.room_type}"
puts "Number of occupants:\t\t#{room_2.number_of_guests}"
60.times{print"-"}
puts"\n"
puts "Room number:\t\t\t#{room_3.room_number}"
puts "Guest details:\t\t\t#{room_3.guest_details}"
puts "Room type:\t\t\t#{room_3.room_type}"
puts "Number of occupants:\\tt#{room_3.number_of_guests}"
60.times{print"-"}
puts"\n"

#------ CREATE GUESTS ------#

#binding.pry;''