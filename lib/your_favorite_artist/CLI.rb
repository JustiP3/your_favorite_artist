class CLI 

attr_accessor :input, :level 

  def initialize 
    @input = ""
    @level = "1"
  end 
  
  def call 
    puts "--------------------------------"
    puts "Welcome to Your Favorite Artist!"
    puts "--------------------------------"
    
    while self.input != 'exit'
      get_user_input_artist
      if input != 'exit'
        fav_artist = Artist.new(input)
        print_artist_info(fav_artist)
      end
      
      exit_prompt
      
      details_loop = true if input != 'exit' 
      while details_loop == true 
        level = "2"
        get_user_input_details
        print_details(fav_artist) unless input == 'exit'
        details_loop = false if self.input == 'exit'
      end 
      
      if input == 'exit' && level == "2"
        puts "That's it!"
        level = "1"
        fav_artist.reset 
        exit_prompt
      end 
   end #end of program loop
   be_polite_say_goodbye 
  end #end of call method 
  
  
  def get_user_input_artist
    until self.input.length > 0 
      puts "Who is your favorite artist?"
      puts "Enter your favorite artist or exit"
      self.input = gets.chomp 
    end #end of until loop 
    return input 
  end #end of method get_user_input 
  
  def get_user_input_details
  good_input = false
  until good_input == true 
    puts "1. See related artists"
    puts "2. See top albums"
    puts "3. See top songs"
    puts "What would you like to see?"
    puts "Enter 1-3 or 'exit' to quit"
    self.input = gets.chomp 
   
    if input == "1" 
      good_input = true 
    elsif input == "2"
      good_input = true 
    elsif input == "3" 
      good_input = true 
    elsif input == 'exit'
      return 'exit'
    else 
      puts "Invalid input, please try again."
    end 
  end 
    self.input 
  end # end of method  
  
  def get_user_input_album_tracklist
    puts ""
    puts "Would you like to see the tracklist?"
    puts "Enter 1-5 for album selection, Press Enter to continue, or type 'exit'"
    input = gets.chomp 
  end 
  
  def print_artist_info(artist)
    artist.get_info
      if artist.error == false 
        puts "You picked #{artist.name}!"
        puts "Artist Bio:"
        puts artist.short_bio
      else 
        puts artist.error_message 
      end 
  end 
  
  def print_details(artist)
    if input == "1"
      puts "I'll show you related artists"
    elsif input == "2"
      puts "I'll show you top albums"
      artist.print_top_albums 
      get_user_input_album_tracklist
      if input != 'exit'
        level = "3"
        print_tracklist(artist)
      end 
    elsif input == "3"
      puts "I'll show you top songs"
    end 
  end 
  
  def print_tracklist(artist)
    index = nil 
    case input 
    when "1" 
      index = 0 
    when "2"
      index = 1 
    when "3"
      index = 2 
    when "4"
      index = 3 
    when "5"
      index = 4
    end 
    artist.print_tracklist(index) unless index == nil 
  end 
  
    def exit_prompt
    if input != 'exit'
      puts "Would you like to continue?"
      puts "Enter 'exit' to quit or press 'enter' to continue"
      self.input = gets.chomp 
    end 
    
  end 
  
  def be_polite_say_goodbye
    puts "Thank you for stopping by!"
    puts "See you next time, friend."
  end 
  

  
  
end #end of class 