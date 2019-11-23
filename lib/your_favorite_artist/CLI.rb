class CLI 

attr_accessor :input

  def initialize 
    @input = ""
  end 
  
  def call 
    
    puts "Welcome to Your Favorite Artist!"
    
    while input != 'exit'
    
    input = get_user_input_artist
    unless input == 'exit'
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
    until input && input.length > 0 
      puts "Who is your favorite artist?"
      puts "Enter your favorite artist or exit"
      input = gets.chomp 
      if input == Integer
        input = ""
        puts "Please enter a name in quotes, not a number"
      end 
    end #end of until loop 
    return input 
  end #end of method get_user_input 
  
  def exit_prompt
    puts "Would you like to continue?"
    puts "Enter y/n"
    input = gets.chomp 
    if input == 'exit' || input[0] == 'n' || input[0] == "N"
      return 'exit'
    end 
    
  end 
  
end #end of class 