# db/seeds.rb

# Create users
User.create(email: 'user1@example.com', password: 'password')
User.create(email: 'user2@example.com', password: 'password')

# Create hotels
10.times do |i|
  Hotel.create(name: "Hotel #{i+1}", location: "Location #{i+1}")
end

# Create rooms
Hotel.all.each do |hotel|
  5.times do |i|
    hotel.rooms.create(number: i+1)
  end
end

# Create reservations
Room.all.each do |room|
  Reservation.create(check_in_date: Date.today, check_out_date: Date.today + 3, room: room, user: User.first)
end

User.create(email: 'user@example.com', password: 'password')