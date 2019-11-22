class API  
#key a9ca6c61110b8a16ee8dd7a8d661ed33  

attr_reader :test, :artist_info

  def self.get_artist_info 
  
  link = 'http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=Cher&api_key=a9ca6c61110b8a16ee8dd7a8d661ed33&format=json'
  response = HTTParty.get(link)
  hash = response.parsed_response 
  binding.pry
  end 
  
  

end 