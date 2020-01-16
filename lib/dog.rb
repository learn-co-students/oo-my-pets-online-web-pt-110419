class Dog
#   attr_accessor :name, :owner 
  
#   def initialize(name)
#     @name = name 
#     @owner = owner 
#   end 
  
# end
# attr_reader :name
#   attr_accessor :mood

#   def initialize(name, mood = "nervous")
#     @mood = mood
#     @name = name
#   end
# end 

attr_accessor :owner, :mood
  attr_reader :name 
  @@all = []
 
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end 
    
    def self.all
      @@all
    end 
  
  
end
