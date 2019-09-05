module Hotel
  class Reservation 
    attr_reader :room, :cost_per_night, :date_range

    def initialize(room, cost_per_night, date_range)
      @room = room
      @cost_per_night = cost_per_night
      @date_range = date_range
    end 

    def total_days_cost 
      total_cost = @date_range.number_of_days * @cost_per_night
      return total_cost
    end 
  end 
end 