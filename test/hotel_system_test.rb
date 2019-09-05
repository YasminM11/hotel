require 'simplecov'
SimpleCov.start
require_relative 'test_helper'
require "date"
require_relative "../lib/date_range"
require_relative "../lib/reservation"
require_relative "../lib/hotel_system"

describe "hotel_system" do
  before do
    @hotel_system = Hotel::HotelSystem.new
    room = 1
    cost_per_night = 200
    start_date = Date.new(2001,2,3)
    end_date = Date.new(2001,2,6)
    @date_range = Hotel::DateRange.new(start_date, end_date)
    # @reservation = Hotel::Reservation.new(room, cost_per_night, date_range)
  end
  it "make a reservation" do
    
    # Act 
    @hotel_system.make_reservation(@date_range)
    # Assert
    expect(@reservations.length).must_equal 1
  end
end

