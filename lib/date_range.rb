module Hotel
  class DateRange
    attr_reader :start_date, :end_date

    def initialize(start_date, end_date)
      if end_date <= start_date
        raise ArgumentError, "Invalid dates"
      end 
      @start_date = start_date
      @end_date = end_date
    end
    
    def number_of_days
      total_days = end_date - start_date 
      return total_days
    end 

    def overlap?(date_range)
      if @start_date >= date_range.end_date || date_range.start_date >= @end_date
        return false
      end
      return true
    end
  end 
end