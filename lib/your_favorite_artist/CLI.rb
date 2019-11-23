class CLI 

  def call 
    
    puts "Welcome to Your Favorite Artist!"
    input = ""
    
    while input != 'exit'
    
    input = self.get_user_input_artist
    unless input == 'exit'
      fav_artist = Artist.new(input)
      fav_artist.get_info
      puts "Your favorite artist identifies as #{fav_artist.name}"
      puts "Artist Bio:"
      puts fav_artist.short_bio
      binding.pry 
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
  
end #end of class 