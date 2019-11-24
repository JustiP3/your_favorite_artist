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
      print_artist_info(fav_artist)
    end 
    
   if input != 'exit'
     input = exit_prompt
   end 
   
   end #end of program loop
   
  end #end of call method 
  
  
  def get_user_input_artist
    until self.input.length > 0 
      puts "Who is your favorite artist?"
      puts "Enter your favorite artist or exit"
      self.input = gets.chomp 
    end #end of until loop 
    return input 
  end #end of method get_user_input 
  
  def exit_prompt
    puts "Would you like to continue?"
    puts "Enter 'exit' to quit or press 'enter' to continue"
    self.input = gets.chomp 
    
  end 
  
  def print_artist_info(artist)
    artist.get_info
      if artist.error == false 
        puts "Your favorite artist goes by the name #{artist.name}"
        puts "Artist Bio:"
        puts artist.short_bio
      else 
        puts artist.error_message 
      end 
  end 
  
  
end #end of class 