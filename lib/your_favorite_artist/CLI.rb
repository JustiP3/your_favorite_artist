class CLI 

attr_accessor :input

  def initialize 
    @input = ""
  end 
 
 #-----------------------------------------------------------------------------
 
  def call 
    
    welcome 
    
    while self.input != 'exit'
      your_artist = pick_an_artist
      pause unless input == 'exit'
      
      details_loop = true if input != 'exit' 
      while details_loop == true 
        choice = level_one_details(your_artist) # 1=relatedartist, 2=topalbums, 3=top songs
        level_two_details(your_artist, choice)
        details_loop = false if self.input == 'exit'
      end 
      exit_prompt(your_artist)
   end #end of program loop
   be_polite_say_goodbye 
  end #end of call method 
  
  #-----------------------------------------------------------------------------
  
  
  ## Abstracting program flow helper methods ##
  
  def welcome 
    puts "--------------------------------"
    puts "Welcome to Your Favorite Artist!"
    puts "--------------------------------"
  end 
  
  def pick_an_artist
    get_user_input_artist
    if input != 'exit'
      fav_artist = Artist.new(input)
      print_artist_info(fav_artist)
    end
    fav_artist
  end 
  
  def level_one_details(fav_artist)
    choice = "0" # 1=relatedartist, 2=topalbums, 3=top songs
    choice = get_user_input_details
    print_details(fav_artist) unless input == 'exit'
    choice 
  end 
  
  def level_two_details(fav_artist, choice)
    if choice == "1" && input != 'exit'
      related_artist = get_user_input_related_artist(fav_artist)
      print_related_artist_top_songs(related_artist) unless input == 'exit'
      pause unless input == 'exit'
    elsif choice == "2" && input != 'exit'
      get_user_input_album_tracklist
      print_tracklist(fav_artist) unless input == 'exit'
      pause unless input == 'exit'
    end 
  end 
  
    def exit_prompt(fav_artist)
    fav_artist.reset 
    puts "That's it!"
    self.input = ""
    puts "Would you like to continue?"
    puts "Press 'Enter' to pick a new artist or type 'exit' to quit"
    self.input = gets.chomp 
  end 
  
  def be_polite_say_goodbye
    puts "Thank you for stopping by!"
    puts "See you next time, friend."
  end 
  
  def pause 
    puts "Press enter to continue"
    gets
  end 
  
  ## Get user input methods ## 
  
  # 1. Get favorite artist 
  def get_user_input_artist
    until self.input.length > 0 
      puts "Who is your favorite artist?"
      puts "Enter your favorite artist or exit"
      self.input = gets.chomp 
    end #end of until loop 
    return input 
  end #end of method get_user_input 
  
  #2. Get input for which details user wants to see 
  def get_user_input_details
  good_input = false
  until good_input == true 
    puts ""
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
      good_input = true 
    else 
      puts "Invalid input, please enter 1-3 or 'exit'."
    end 
  end 
    input 
  end
  
  #3. Get input for which album user wants to see tracklist for 
  def get_user_input_album_tracklist
    puts ""
    puts "Would you like to see the tracklist?"
    puts "Enter 'y' for tracklist or 'n' to skip"
    
    good_input = false 
    self.input = gets.chomp 
    if self.input == 'n'
      good_input = true 
    end 
    
    while good_input == false 
      puts "Enter 1-5 for album selection, Press Enter to continue, or type 'exit'"
      self.input = gets.chomp 
      case self.input 
      when "1"
        good_input = true 
       when "2"
        good_input = true 
       when "3"
        good_input = true 
       when "4"
        good_input = true 
       when "5"
        good_input = true 
       when "exit"
        good_input = true 
      end 
    end 
  end 
  
  #4. Get input - which related artist do you want to see the top 5 tracks for?
  def get_user_input_related_artist(fav)
    puts "Would you like to see one of these artist's top songs?"
    puts "Enter 1-5 to select an artist or type 'exit'"
    good_input = false 
    index = -1 
    while good_input == false 
      self.input = gets.chomp 
      case input 
      when "1"
        good_input = true 
        index = 0 
      when "2"
        good_input = true 
        index = 1 
      when "3"
        good_input = true 
        index = 2 
      when "4"
        good_input = true 
        index = 3
      when "5"
        good_input = true
        index = 4
      when "exit"
        good_input = true 
      else 
        puts "Invalid input, Please enter 1-5, or 'exit'"
      end 
    end 
    Artist.new(fav.related_artists[index]) unless input == 'exit'
  end 
  
  ## Print to console methods ## 
  
  #1. Print artist name and bio 
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
  
  #2. Print level 1 details
  def print_details(artist)
    if input == "1"
      artist.print_related_artists 
    elsif input == "2"
      artist.print_top_albums 
    elsif input == "3"
      artist.print_top_songs
    else 
      puts "That was invalid input"
    end 
  end 
  
  #3. Print level 2 details - Album tracklist 
  def print_tracklist(artist)
    index = nil 
    case self.input 
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
  
  #4. Print level 2 details - Top songs of related artist 
  def print_related_artist_top_songs(artist)
    artist.get_info
    puts "Here are the top songs for #{artist.name}"
    artist.print_top_songs
  end 
  
end #end of class 