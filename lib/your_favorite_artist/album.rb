class Album
  @@all = []
  
  attr_accessor :name, :rank, :play_count, :track_list
  
  def initialize (name, rank, play_count)
    @name = name
    @rank = rank
    @play_count = play_count
    @track_list = []
    save 
  end 
  
   def save 
    my_index = @@all.length
    @@all[my_index] = self 
  end 
  
  def self.sort
    @@all.sort {|a1, a2| a1.rank <=> a2.rank}
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
  
  def self.size 
    @@all.size 
  end 
  
end 
