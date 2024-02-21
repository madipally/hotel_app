# spec/models/room_spec.rb
require 'rails_helper'

RSpec.describe Room, type: :model do
  it "is valid with valid attributes" do
    room = Room.new(number: 101, hotel: Hotel.new)
    expect(room).to be_valid
  end

  it "is not valid without a number" do
    room = Room.new
    expect(room).to_not be_valid
  end
end
