require "pry"

class User

  attr_accessor :email, :age
  @@user_count = 0
  @@all_users = []

  def initialize(email, age)
    @email = email
    @age = age
    @@user_count = @@user_count + 1
    @@all_users << @email 
  end

  def greet
    puts "Bonjour, monde !"
  end

  def get_email
    return @email
  end

  def show_itself
    return self
  end

  def say_hello_to_someone(first_name)
    puts "Bonjour, #{first_name} !"
  end

  def self.count
    return @@user_count
  end

  def self.all_users
    return @@all_users
  end

  def show_itself
    print "Voici l'instance : "
    puts self
  end
  
  def to_s
    puts "> email : #{@email}"
    puts "> age : #{@age}"
    puts "> instance : #{ObjectSpace}"
  end

  
  def test(mail)
    @@all_users.each do |x| 
      if mail == x.email
        puts "ok"
      else 
        puts "nik"
      end
    end
  end 

  def self.find_by_email(email)
    @@all_users.each do |user|
      if user.email == email
        return user
      end
    end
    puts "aucun utilisateur n'a cet email"
    return false
  end
  

end




