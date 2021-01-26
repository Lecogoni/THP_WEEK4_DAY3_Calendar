require "pry"

class CalendarView

  attr_accessor :week_board

  def show(current_cal)
  i = 0
  day = 1
    while i <= 4
      j = 0
      puts "-----------------------------------------------------------------------"
      while j <= 6
        if day < 10
          print "|#{day} #{current_cal.week_board[i][j]}"
        elsif day > 9 && day < 32
          print "|#{day} #{current_cal.week_board[i][j]}"
        end
        print 
        day += 1
        j += 1
      end
      i += 1
      puts "|"
    end
  end


end