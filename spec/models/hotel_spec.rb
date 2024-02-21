# spec/models/hotel_spec.rb
require 'rails_helper'

RSpec.describe Hotel, type: :model do
  it "is valid with valid attributes" do
    hotel = Hotel.new(name: "Example Hotel", location: "City")
    expect(hotel).to be_valid
  end

  it "is not valid without a name" do
    hotel = Hotel.new(location: "City")
    expect(hotel).to_not be_valid
  end
end
