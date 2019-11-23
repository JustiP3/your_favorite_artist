class API  
#key a9ca6c61110b8a16ee8dd7a8d661ed33  


  def self.get_artist_info(artist)
#  artist_name_not_on_lastfm = "somesuperobscurename"
  link = "http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{artist}&api_key=a9ca6c61110b8a16ee8dd7a8d661ed33&format=json"
  hash = HTTParty.get(link).parsed_response 
  
  if hash["error"] == 6
    artist_info = hash 
  else 
    artist_info = {
      :name => hash["artist"]["name"],
      :bio => hash["artist"]["bio"]["summary"]
    }
  end 
  
  artist_info
  end 
  
  

end 