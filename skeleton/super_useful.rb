# PHASE 2
def convert_to_int(str)
begin
  Integer(str)
rescue ArgumentError
  puts "must pass integer"
end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  begin
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    raise StandardError
  end
rescue StandardError
  puts "Monster likes fruit, try coffee for another attempt"
  gets_coffee
end
end

def gets_coffee
    begin
    string = gets.chomp
    if string == "coffee"
      puts "Thanks for coffee, try a fruit this time"
      fruit_str = gets.chomp
      reaction(fruit_str)
    else
      raise StandardError
    end
  rescue StandardError
    puts "Give monster coffee"
    retry
  end


end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit)
end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    begin
      if yrs_known<5
        raise ArgumentError
      elsif name.length<1
        raise "Your friend needs a name"
      elsif fav_pastime.length<1
        raise "Your friend needs a pasttime"
      else
        @name = name
        @yrs_known = yrs_known
        @fav_pastime = fav_pastime
      end
    rescue ArgumentError
      puts "You can't be best friends, you've known each other less than 5 years"
    end

  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end
end
