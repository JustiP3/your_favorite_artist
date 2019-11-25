class Artist 
  attr_accessor :name, :bio, :short_bio, :error, :error_message, :albums 

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
  
  def get_top_albums 
    album_hash = API.get_top_albums(self.name)
    self.top_album = album_hash[:name]
    self.top_album_play_count = album_hash[:play_count]
  end 
  
  def top_album 
    Album.top_album 
  end 
  
  def create_album(album_hash, rank)
    name = album_hash["name"]
    play_count = album_hash["playcount"]
    self.albums << Album.new(name, rank, play_count) 
  end 
  

  
end 