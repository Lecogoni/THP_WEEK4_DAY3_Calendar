
class EventCreator

  def initialize
    puts "Salut, tu veux créer un événement ? Cool !" 
    puts "Commençons. Quel est le nom de l'événement ?"
    title = gets.chomp

    puts "Super. Quand aura-t-il lieu ?"
    start_date = gets.chomp

    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    duration = gets.chomp.to_i

    puts "Génial. Qui va participer ? Balance leurs e-mails"
    attendees = gets.chomp
    attendees_formated = attendees.split(", ")
  
    puts "Super, c'est noté, ton évènement a été créé !"
    new_event = Event.new(start_date, duration, title, attendees_formated)
    new_event.to_s
  end
  
  
end
