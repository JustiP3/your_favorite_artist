#This class only interacts with the artist class
class Album
  @@all = []
  
  attr_accessor :name, :rank, :play_count
  
  def initialize (name, rank, play_count)
    @name = name
    @rank = rank
    @play_count = play_count
    self << @@all 
  end 
  
  self.sort
    @@all.sort {|a1, a2| a1.rank <=> a2.rank}
  end 
  
  
end 
