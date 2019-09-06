require 'simplecov'
SimpleCov.start
require_relative 'test_helper'
require "date"
require_relative "../lib/date_range"
require_relative "../lib/reservation"
require_relative "../lib/hotel_system"
require 'pry'
describe "hotel_system" do
  before do
    @hotel_system = Hotel::HotelSystem.new
    room = 1
    @cost_per_night = 200
    start_date = Date.new(2001,2,3)
    end_date = Date.new(2001,2,6)
    @date_range = Hotel::DateRange.new(start_date, end_date)
    @reservation = Hotel::Reservation.new(room, @cost_per_night, @date_range)
  end
  
  it "make a reservation if there is an available room" do
    # Act
    @hotel_system.make_reservation(@date_range, @cost_per_night)
    # Assert
    expect(@hotel_system.reservations.length).must_equal 1
    reservation = @hotel_system.reservations[0]
    expect(reservation.room).must_equal 1
    expect(reservation.cost_per_night).must_equal @cost_per_night
    expect(reservation.date_range).must_equal @date_range
  end
  
  it "raise ArgumentError if there is no room to book" do
    20.times do 
      @hotel_system.make_reservation(@date_range, @cost_per_night)
    end
    
    expect {
      @hotel_system.make_reservation(@date_range, @cost_per_night)
    }.must_raise ArgumentError
  end
  
  it "list room should return an array" do
    expect(@hotel_system.list_rooms).must_be_kind_of Array
  end
  
  it "list room should return an array of 20" do
    expect(@hotel_system.list_rooms.length).must_equal 20
  end
  
  it "list reservations should return an array" do
    expect(@hotel_system.list_rooms).must_be_kind_of Array
  end
  
  it "list reservations should return the correct dates" do
    @hotel_system.make_reservation(@date_range, @cost_per_night)
    reservation2 = Hotel::DateRange.new(Date.new(2001,2,1),Date.new(2001,2,3))
    @hotel_system.make_reservation(reservation2, @cost_per_night)
    
    reservation3 = Hotel::DateRange.new(Date.new(2001,2,6),Date.new(2001,2,8))
    @hotel_system.make_reservation(reservation3, @cost_per_night)
  
    expect(@hotel_system.make_reservation(@date_range)[0].date_range).must_equal @date_range 
    expect(@hotel_system.list_reservations(@date_range).length).must_equal 1
  end
end
