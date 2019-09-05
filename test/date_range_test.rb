require 'simplecov'
SimpleCov.start

require_relative 'test_helper'
require "date"
require_relative "../lib/date_range"

describe "date_range" do
  it "raises an argument error if end_date is before start_date" do
    # Arrange
    start_date = Date.new(2001,2,3)
    end_date = start_date - 3

    # Act/Assert
    expect {
      Hotel::DateRange.new(start_date, end_date)
    }.must_raise ArgumentError 
  end

  it "raises an argument error if end_date is equal to start_date" do
    # Arrange
    start_date = Date.new(2001,2,3)
    end_date = start_date 
    
    # Act/Assert
    expect {
      Hotel::DateRange.new(start_date, end_date)
    }.must_raise ArgumentError
  end
  
  it "number_days returns the correct number of days" do
    # Arrange
    start_date = Date.new(2001,2,3)
    end_date = start_date + 3
    
    # Act
    range = Hotel::DateRange.new(start_date, end_date)

    # Assert
    expect(range.number_of_days).must_equal 3 
  end
end