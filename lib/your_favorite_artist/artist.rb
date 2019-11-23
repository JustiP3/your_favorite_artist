class Artist 
  attr_accessor :name, :bio

  def initialize(name)
    @name = name
  end 
  
  def get_info
    temp_hash = API.get_artist_info(self.name)
    self.name = temp_hash[:name]
    self.bio = temp_hash[:bio]
  end 
  
end 