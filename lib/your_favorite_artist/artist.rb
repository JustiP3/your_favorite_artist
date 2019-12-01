class Artist 
  attr_accessor :name, :bio, :short_bio, :error, :error_message, :related_artists, :top_songs 

  def initialize(name)
    @name = name
    @error = false 
    @error_message = ""
    @related_artists = []
    @top_songs = []
  end 
  
  def get_info
    temp_hash = API.get_artist_info(self.name)
    if temp_hash["error"]
      self.error_message = temp_hash["message"]
      self.error = true 
    else 
      self.name = temp_hash[:name]
      self.bio = temp_hash[:bio]
      self.short_bio = self.bio.slice(0,75)
      self.short_bio << "..."
      self.related_artists = temp_hash[:similar]
    end 

  end 
  
  def create_album(album_hash, rank)
    name = album_hash["name"]
    play_count = album_hash["playcount"]
    Album.new(name, rank, play_count) 
  end 
  
    def print_top_albums
    API.get_top_albums(self)
    Album.sort
    Album.all.each do |album|
      puts "#{album.rank}. #{album.name} (#{album.play_count} plays)"
    end 
  end 
  
  def print_tracklist(index)
    fav_album = Album.all[index]
    API.get_album_info(self, fav_album)
    puts fav_album.name + ":"
    fav_album.track_list.each.with_index(1) {|track, i| puts "#{i}. #{track}"}
  end 
  
  def print_related_artists 
    related_artists.each.with_index(1) {|name, i| puts "#{i}. #{name}"}
  end 
  
  def print_top_songs 
    self.top_songs = API.get_top_tracks(self)
    top_songs.each.with_index(1) {|song, i| puts "#{i}. #{song}"}
  end 
  
end 