class CLI 

attr_accessor :input

  def initialize 
    @input = ""
  end 
  
  def call 
    
    puts "Welcome to Your Favorite Artist!"
    
    while self.input != 'exit'
    
    get_user_input_artist
    if input != 'exit'
      fav_artist = Artist.new(input)
      fav_artist.get_info
      puts "Your favorite artist identifies as #{fav_artist.name}"
      puts "Artist Bio:"
      puts fav_artist.short_bio
      input = exit_prompt
    end 
   
   end #end of program loop
   
  end #end of call method 
  
  
  def get_user_input_artist
    until self.input.length > 0 
      puts "Who is your favorite artist?"
      puts "Enter your favorite artist or exit"
      self.input = gets.chomp 
      test_string_input
    end #end of until loop 
    return input 
  end #end of method get_user_input 
  
  def exit_prompt
    puts "Would you like to continue?"
    puts "Enter 'exit' to quit or press 'enter' to continue"
    self.input = gets.chomp 
    
    
  end 
  
  def test_string_input
    if self.input == Integer
        self.input = ""
        puts "Please enter a name in quotes, not a number"
    end 
  end 
  
end #end of class 