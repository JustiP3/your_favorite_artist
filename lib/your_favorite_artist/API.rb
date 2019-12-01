class API  
#key a9ca6c61110b8a16ee8dd7a8d661ed33

  def self.get_artist_info(artist)
    link = "http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{artist}&api_key=a9ca6c61110b8a16ee8dd7a8d661ed33&format=json"
    hash = HTTParty.get(link).parsed_response 
    if hash["error"] == 6 
      artist_info = hash 
    else 
      related_artists = []
      hash["artist"]["similar"]["artist"].each {|artist_hash| related_artists.push(artist_hash["name"])}
      artist_info = {
        :name => hash["artist"]["name"],
        :similar => related_artists
      }
    
      if hash["artist"]["bio"]["summary"].include?("https://www.last.fm/music/+noredirect")
        artist_info[:bio] = "Sorry, this artist does not have a bio."
      else 
        artist_info[:bio] = hash["artist"]["bio"]["summary"]
      end 
    end 
    artist_info
  end 
  
  def self.get_top_albums(artist)
    link = "http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=#{artist.name}&api_key=a9ca6c61110b8a16ee8dd7a8d661ed33&format=json"
    hash = HTTParty.get(link).parsed_response
  
    if hash["topalbums"]["album"].length < 5 
      short_list = hash["topalbums"]["album"]
    else 
      short_list = hash["topalbums"]["album"][0..4]
    end 
    
    short_list.each.with_index(1) {|album, i| artist.create_album(album, i)}
  end 
  
  def self.get_album_info(artist, album)
    link =  "http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=a9ca6c61110b8a16ee8dd7a8d661ed33&artist=#{artist.name}&album=#{album.name}&format=json"
    hash = HTTParty.get(link).parsed_response
    
    hash["album"]["tracks"]["track"].each {|track| album.track_list.push(track["name"])}
    album.track_list 
  end 
  
  def self.get_top_tracks(artist)
    link = "http://ws.audioscrobbler.com/2.0/?method=artist.gettoptracks&artist=#{artist.name}&api_key=a9ca6c61110b8a16ee8dd7a8d661ed33&format=json"
    hash = HTTParty.get(link).parsed_response
    top_tracks = []
    
    hash["toptracks"]["track"].each {|song| top_tracks.push(song["name"])}
    top_tracks.slice(0..4)
  end 

end 