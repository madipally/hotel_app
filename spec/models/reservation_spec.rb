# spec/models/reservation_spec.rb
require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it "is valid with valid attributes" do
    user = User.create(email: "test@example.com", password: "password")
    room = Room.create(number: 1, hotel_id: 1)
    reservation = Reservation.new(check_in_date: Date.today, check_out_date: Date.today + 3, user: user, room: room)
    expect(reservation).to be_valid
  end

  it "is not valid without a check-in date" do
    user = User.create(email: "test@example.com", password: "password")
    room = Room.create(number: 1, hotel_id: 1)

    reservation = Reservation.new(check_out_date: Date.today + 3)
    expect(reservation).to_not be_valid
  end
end
