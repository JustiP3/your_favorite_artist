class API  
#key a9ca6c61110b8a16ee8dd7a8d661ed33  


  def self.get_artist_info(artist)
  
  link = "http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{artist}&api_key=a9ca6c61110b8a16ee8dd7a8d661ed33&format=json"
  hash = HTTParty.get(link).parsed_response 
  artist_info = {
    :name = hash["artist"]["name"],
    :bio = hash["artist"]["bio"]
  }
  artist_info
  end 
  
  

end 