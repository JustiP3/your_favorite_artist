class CLI 

  def call 
    
    puts "Welcome to Your Favorite Artist!"
    input = ""
    while input != 'exit'
    puts "Who is your favorite artist?"
    puts "Enter your favorite artist or exit"
    
    input = gets.chomp 
    fav_artist = artist.new(input)
    info = fav_artist.get_info
    binding.pry
   
   end #end of program loop
   
  end #end of call method 
  
end #end of class 