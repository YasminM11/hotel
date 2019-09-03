module Hotel

    def class DateRange
      attr_reader :start_date, :end_date
      def initialize(start_date, end_date)
        if end_date < start_date
          raise ArgumentError ("Dates not matches")
        end 
        @start_date = start_date
        @end_date = end_date
      end

      def number_days
        days = end_date - start_date 
        return days
      end 


end 