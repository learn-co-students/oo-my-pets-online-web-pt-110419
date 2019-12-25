class Cat
   attr_reader :name, :species
   attr_accessor :owner, :mood
  @@all = []
  @@count = 0
  
  def initialize (name, owner)
    
    @name = name
    @owner = owner
    @species = "cat"
    @mood = "nervous"
    @@all << self
    @@count +=1
    
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@all =[]
    @@count = 0
  end
  

end