
module Hotel
  class HotelSystem
    def initialize
      @rooms = (1..20).to_a
      @reservations = []
      
    end
    
    
    def available_rooms(start_date, end_date)
      
      available_rooms = []
      
      @reservations.each do |reservation|
        if !reservation.date_range.check_availible_dates(start_date, end_date)
          available_rooms << reservation.room
        end
      end
      return available_rooms
    end
    
    def make_reservation(date_range)
      room = available_rooms(date_range.start_date, date_range.end_date)[0]
      new_reservation = Hotel::Reservation.new(room, date_range)
      @reservations << new_reservation
    end
  end
end


