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
  end 

  def check_availible_dates(start_date, end_date)
    new_day = start_date
    while (start_date < end_date)
      if @start_date <= new_day && @end_date > new_day
        return true
      end
      new_day += 1
    end
    return false
  end
end