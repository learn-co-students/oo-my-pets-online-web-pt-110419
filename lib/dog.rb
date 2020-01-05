 class Dog 
 
 
   attr_accessor :owner, :mood 
   attr_reader :name 
   
      @@all = [] 
  
  
  
    
    #NTANCE METHODS
    
    
    def initialize(name, owner)   
      @name = name 
      @mood = "nervous" 
      @owner = owner 
      @@all << self 
    end

    
    
    #CLASS METHODS  ( Knows all the dogs)

    def self.all 
      @@all
    end 

end

