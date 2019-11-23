class Artist 
  attr_accessor :name, :bio, :shortbio

  def initialize(name)
    @name = name
  end 
  
  def get_info
    temp_hash = API.get_artist_info(self.name)
    self.name = temp_hash[:name]
    self.bio = temp_hash[:bio]
    self.shortbio = self.bio.truncate(100, omission: '... (continued)')
  end 
  
end 