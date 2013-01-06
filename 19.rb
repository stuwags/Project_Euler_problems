@days_of_week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
@months = ["Jan", "Feb", "March", "April", "May", "June", "July", "August", "September", "Oct", "Nov", "Dec"]
@year = 1900
@day = -1
@number_of_sundays_on_first = 0

def standard_year
  days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  if @day == 6
    @day = -1
  end
  for i in 0..11
    for j in 1..days_in_month[i]
      @day += 1
      if @day == 6 && j == 1 && @year > 1900
        @number_of_sundays_on_first += 1
      end
      puts "Day: #{j} Month: #{@months[i]} Day: #{@days_of_week[@day]} Year: #{@year}"
      if @day == 6
        @day = -1
      end
    end
  end
  @year += 1
end

def leap_year
  days_in_month = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  if @day == 6
    @day = -1
  end
  for i in 0..11
    for j in 1..days_in_month[i]
      @day += 1
      if @day == 6 && j == 1 && @year > 1900
        @number_of_sundays_on_first += 1
      end
      puts "Day: #{j} Month: #{@months[i]} Day: #{@days_of_week[@day]} Year: #{@year} *******"
      if @day == 6
        @day = -1
      end
    end
  end
  @year += 1
end

#run first year
standard_year
while @year<=2000
  if @year % 4 == 0
    leap_year
  else
    standard_year
  end
end
puts @number_of_sundays_on_first