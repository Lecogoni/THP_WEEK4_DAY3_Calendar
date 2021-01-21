# require 'bundler' 
# Bundler.require 

require "pry"

require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/event_creator'

# puts ed = User.new("ed@gmail.lol", "22") +0
# puts ed.email

#puts event = Event.new("2019-01-06 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
#puts event2 = Event.new("2021-01-21 16:30", 20, "thp", ["ed@machin.com", "nico@chose.fr", "dem@truc.fr"])
puts event3 = Event.new("2021-01-21 19:30", 20, "ok", ["ed@machin.com", "nico@chose.fr", "dem@truc.fr"])

User.new(".org", 35)
User.new(".net", 23)
User.new(".com", 75)

EventCreator.new

binding.pry
