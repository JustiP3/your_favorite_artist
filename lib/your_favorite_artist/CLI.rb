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
    puts "Who is your favorite artist?"
    puts "Enter your favorite artist or exit"
    gets.chomp 
  end 
  
end #end of class 