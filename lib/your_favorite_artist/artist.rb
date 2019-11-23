class Artist 
  attr_accessor :name, :bio, :short_bio

  def initialize(name)
    @name = name
  end 
  
  def get_info
    temp_hash = API.get_artist_info(self.name)
    self.name = temp_hash[:name]
    self.bio = temp_hash[:bio]
    #self.short_bio = self.bio.truncate(100, omission: '... (continued)')
    binding.pry 
  end 
  
end 