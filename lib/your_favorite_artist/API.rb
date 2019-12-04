class API  
#key a9ca6c61110b8a16ee8dd7a8d661ed33

  def self.get_artist_info(artist_instance)
    link = "http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{artist_instance.name}&api_key=a9ca6c61110b8a16ee8dd7a8d661ed33&format=json"
    hash = HTTParty.get(link).parsed_response 
    
    #test for errors (e.g. artist not found)
    if hash["error"] == 6 
      artist_instance.error_message = hash["message"]
      artist_instance.error = true
    else 
      hash["artist"]["similar"]["artist"].each {|artist_hash| artist_instance.related_artists.push(artist_hash["name"])}
      artist_instance.name = hash["artist"]["name"]
      if hash["artist"]["bio"]["summary"].include?("https://www.last.fm/music/+noredirect") 
        artist_instance.bio = "Sorry, this artist does not have a bio."
      else 
        artist_instance.bio = hash["artist"]["bio"]["summary"]
      end
      artist_instance.short_bio = artist_instance.bio.slice(0,75)
      artist_instance.short_bio << "..."
    end 
      
    #test that bio section exists 

  end 
  
  def self.get_top_albums(artist)
    link = "http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=#{artist.name}&api_key=a9ca6c61110b8a16ee8dd7a8d661ed33&format=json"
    hash = HTTParty.get(link).parsed_response
  
    if hash["topalbums"]["album"].length < 5 
      short_list = hash["topalbums"]["album"]
    else 
      short_list = hash["topalbums"]["album"][0..4]
    end 
    
    short_list.each.with_index(1) do |album_hash, i| 
      name = album_hash["name"]
      play_count = album_hash["playcount"]
      Album.new(name, i, play_count) 
    end 
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

    hash["toptracks"]["track"].each {|song| artist.top_songs.push(song["name"])}
    artist.top_songs = artist.top_songs.slice(0..4)
  end 

end 