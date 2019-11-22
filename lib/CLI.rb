class CLI 

  def call 
    
    puts "Welcome to Your Favorite Artist!"
    input = ""
    while input != 'exit'
    puts "Who is your favorite artist?"
    puts "Enter your favorite artist or exit"
    
    input = gets.chomp 
    
    puts input
   end #end of program loop
   
  end #end of call method 
  
end #end of class 