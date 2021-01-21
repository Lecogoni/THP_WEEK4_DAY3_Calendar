require 'time'

class Event
  
  attr_accessor :title, :duration, :attendees, :start_date

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title.to_s
    @attendees = attendees
  end

  def postpone_24h
    @start_date = @start_date + 86400
  end

  def end_date
    @start_date + (@duration * 60)
  end

  # event passé et résolu
  def is_past?
    return Time.new > self.end_date
  end

  # event a venir
  def is_futur?
    return Time.new < self.end_date #Time.new == Time.now == the time now
  end

  # event en cour
  def is_on_going?
    return Time.new <= self.end_date && time_now >= self.start_date
  end
  # event sans les 30 min ?
  def is_soon?
    return Time.now >= (start_date - (30 * 60)) && Time.now < start_date
  end
  
  def to_s
    puts "> Titre : #{@title}"
    puts "> Date de début : #{@start_date.strftime("%Y-%m-%d %k:%M %A")}"
    puts "> Durée : #{@duration} minutes"
    puts "> Invités : #{@attendees.join(", ")}"
  end

end

