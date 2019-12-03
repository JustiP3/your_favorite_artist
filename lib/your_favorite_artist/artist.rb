class Artist 
  attr_accessor :name, :bio, :short_bio, :error, :error_message, :related_artists, :top_songs 

  def initialize(name)
    @name = name
    @error = false 
    @error_message = ""
    @related_artists = []
    @top_songs = []
    get_info 
  end 
  
  def get_info
    API.get_artist_info(self)
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
    API.get_top_tracks(self)
    top_songs.each.with_index(1) {|song, i| puts "#{i}. #{song}"}
  end 
  
end 