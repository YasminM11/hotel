
module Hotel
  class HotelSystem
    attr_reader :rooms, :reservations
    def initialize
      @rooms = (1..20).to_a 
      @reservations = []
    end
    
    def list_rooms 
      return @rooms.dup
    end

    def available_rooms(date_range)
      rooms = @rooms.dup
    end

    def list_reservations(date_range)
      matches_reservations = @reservations.select do |reservation|
        reservation.date_range.overlap?(date_range)
      end
      return matches_reservations
    end

    def available_rooms(date_range)
      rooms = @rooms.dup
      
      @reservations.each do |reservation|
        if reservation.date_range.overlap?(date_range)
          rooms.delete(reservation.room)
        end
      end
      return rooms
    end

    def make_reservation(date_range, cost_per_night = 200)
      rooms = available_rooms(date_range)
      if rooms.length == 0 
        raise ArgumentError.new("No room available")
      end
      room = rooms[0]
      new_reservation = Hotel::Reservation.new(room, cost_per_night, date_range)
      @reservations << new_reservation
    end
  end
end



