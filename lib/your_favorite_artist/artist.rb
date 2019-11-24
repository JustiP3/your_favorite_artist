class Artist 
  attr_accessor :name, :bio, :short_bio, :error, :error_message

  def initialize(name)
    @name = name
    @error = false 
    @error_message = ""
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
  
end 