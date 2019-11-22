class API  
#key a9ca6c61110b8a16ee8dd7a8d661ed33  
  def artist 
  artist_info = open('http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=Cher&api_key=a9ca6c61110b8a16ee8dd7a8d661ed33&format=json').first
  binding.pry 
  end 
  
end 