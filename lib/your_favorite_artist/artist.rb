class Artist 
  attr_accessor :name, :bio, :short_bio, :error, :error_message

  def initialize(name)
    @name = name
    @error = false 
    @error_message = ""
    @albums = []
  end 
  
  def get_info
    temp_hash = API.get_artist_info(self.name)
    if temp_hash["error"]
      self.error_message = temp_hash["message"]
      self.error = true 
    else 
    self.name = temp_hash[:name]
    self.bio = temp_hash[:bio]
    self.short_bio = self.bio.slice(0,50)
    self.short_bio << "..."
    end 

  end 
  
  def print_top_albums
    API.get_top_albums(self)
    Album.sort
    Album.all.each do |album|
      puts "#{album.rank}. #{album.name}"
      puts "#{album.play_count} plays on last.fm"
    end 
    
  end 
  
  def top_album 
    Album.top_album 
  end 
  
  def create_album(album_hash, rank)
    name = album_hash["name"]
    play_count = album_hash["playcount"]
    Album.new(name, rank, play_count) 
  end 
  
  def reset 
    Album.clear 
  end 
  

  
end 