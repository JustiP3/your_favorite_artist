class API  
#key a9ca6c61110b8a16ee8dd7a8d661ed33  


  def self.get_artist_info(artist)
#  artist_name_not_on_lastfm = "somesuperobscurename"
# artist that exists but has no bio "2345"
  link = "http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{artist}&api_key=a9ca6c61110b8a16ee8dd7a8d661ed33&format=json"
  hash = HTTParty.get(link).parsed_response 
  
  if hash["error"] == 6 
    artist_info = hash 
  else 
    artist_info = {:name => hash["artist"]["name"]}
      if hash["artist"]["bio"]["summary"].include?("https://www.last.fm/music/+noredirect")
        artist_info[:bio] = "Sorry, this artist does not have a bio."
      else 
        artist_info[:bio] = hash["artist"]["bio"]["summary"]
      end 
  end 
  artist_info
  end 
  
  def self.get_top_albums(artist)
    #/2.0/?method=artist.gettopalbums&artist=cher&api_key=YOUR_API_KEY&format=json
    link = "http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=#{artist}&api_key=a9ca6c61110b8a16ee8dd7a8d661ed33&format=json"
    hash = HTTParty.get(link).parsed_response
    binding.pry 
    if hash["topalbums"]["album"].length > 5 
      hash["topalbums"]["album"].each do |album|
    else
    
    end 
    top_album = {
      :name => hash["topalbums"]["album"][1]["name"],
      :play_count => hash["topalbums"]["album"][1]["playcount"]
    }
    binding.pry 
  end 
  
  

end 