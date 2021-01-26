require "pry"

class Calendar
	attr_accessor :week_board

	def initialize()
	@week_board = []
		for i in 0..4
			day = []
      for j in 0..6
        day[j] = j
			end
			@week_board[i] = day
		end
  end

  def define_calendar_content
    for i in 0..4
      
      for j in 0..6
        event_of_day = []
        nbre_of_event = 0 
        Event.all.each do |instance| 
          
          if instance.idx1 == i && instance.idx2 == j
            nbre_of_event += 1
            event_of_day << instance.title
          end
          
        end

        if event_of_day.length > 1
          @week_board[i][j] = "#{nbre_of_event}.event"
            
        elsif event_of_day.length == 1
          @week_board[i][j] = event_of_day.join()
        else
          @week_board[i][j] = ""
        end

			end
		end 
  end

end



def my_cal

  calendar = Array.new(5) { Array.new(7) } #"nico"

  calendar.each_with_index do |week, index|
    day = 1
    print week
    puts ""
    week.each_with_index do |day, idx|
      calendar[index][idx] = day
    end
  end
end

