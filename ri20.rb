class MegaGreeter
  # Allows us access to the value of the attribute names by granting two methods, .names to retrieve the value and .names= to set the value
  attr_accessor :names

  # Creates the class with the initial value for names being World
  def initialize(names = "World")
    # Initializes the instance variable @names, which is available to all methods of the class
    @names = names
  end

  # Defines a new method say_hi, which will use puts to print out a result depending on which case it meets
  def say_hi
    # If @names is empty, it will print ...
    if @names.nil?
      puts "..."
    # If @names responds to each, which is only useable on a list such as an array, it will print Hello to each name in the list
    elsif @names.respond_to?("each")
      # Performs an action for each element in @names, and use the word in between the vertical bars as the variable for the current iteration
      @names.each do |name|
        # Uses the hashtag and brackets to put a variable into a string
        puts "Hello #{name}!"
      end
    # Runs if there is a single element stored in @names
    else
      puts "Hello #{@names}!"
    end
  end

  # Defines another new method say_bye
  def say_bye
    # If @names is empty, it will print ...
    if @names.nil?
      puts "..."
    # If @names responds to join, which is only useable on a list such as an array, it will put all of the names into one string
    elsif @names.respond_to?("join")
      # Joins the list elements with commas
      puts "Goodbye #{@names.join(", ")}.  Come back soon!"
    # Runs if there is a single element stored in @names
    else
      puts "Goodbye #{@names}.  Come back soon!"
    end
  end
end

# Checks to make sure that the file being opened matches this filename
if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Changes name to be "Zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  # Changes name to an array of names
  mg.names = ["Albert", "Brenda", "Charles",
              "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  # Change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end