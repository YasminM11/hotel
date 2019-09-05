require 'simplecov'
SimpleCov.start

require_relative 'test_helper'
require "date"
require_relative "../lib/date_range"
require_relative "../lib/reservation"

describe "reservation" do
  before do
    room = 1
    cost_per_night = 200
    start_date = Date.new(2001,2,3)
    end_date = Date.new(2001,2,6)
    date_range = Hotel::DateRange.new(start_date, end_date)
    @reservation = Hotel::Reservation.new(room, cost_per_night, date_range)
  end
  it "returns the correct total cost" do
    
    # Act 
    total_cost = @reservation.total_days_cost

    # Assert
    expect(total_cost).must_equal 600
  end
end

#   it "each reservation has a room"
#   expect(reservation).must_respond_to :room
#   end
# end