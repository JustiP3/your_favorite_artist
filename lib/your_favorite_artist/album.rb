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
  
  def self.sort
    @@all.sort {|a1, a2| a1.rank <=> a2.rank}
  end 
  
  def self.top_album
    @@all.sort.first 
  end 
  
  def self.clear
    @@all = []
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.all=(var)
    @@all = var if var.class == Array 
  end 
  
  
end 
