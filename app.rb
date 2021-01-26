require 'bundler' 
Bundler.require 

require "pry"

require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/event_creator'
require_relative 'lib/calendar'
require_relative 'lib/calendar_view'

# puts ed = User.new("ed@gmail.lol", "22") +0
# puts ed.email

event1 = Event.new("2019-01-03 09:00", 10, "standup", ["truc@machin.com", "bidule@chose.fr"])
event2 = Event.new("2021-01-09 16:30", 20, "thp", ["ed@machin.com", "nico@chose.fr", "dem@truc.fr"])
event3 = Event.new("2021-01-12 19:30", 20, "meeting", ["ed@machin.com", "nico@chose.fr", "dem@truc.fr"])
event4 = Event.new("2021-01-12 19:30", 20, "meet", ["ed@com", "nico@fr", "dem@fr"])
event5 = Event.new("2021-01-20 19:30", 20, "Sport", ["ed@com", "nico@fr", "dem@fr"])

#User.new("ed@org", 35)
#User.new(".net", 23)
#User.new(".com", 75)

#print Event.all

current_cal = Calendar.new


Event.all
current_cal.define_calendar_content
CalendarView.new.show(current_cal)

#binding.pry