class Cat

  attr_accessor :owner, :mood 
  attr_reader   :name 

   @@all = []
   
   # INSTANCE METHODS  
   
   
  def initialize(name, owner)     #INITIALIZES W/ NAME AND AN OWNER 
    @name = name 
    @owner = owner         
    @mood = "nervous"             #INITIALIZES W/ A NERVOUS MOOD 
    @@all << self 
  end 



  


   #CLASS METHODS  ( KNOWS ALL THE CATS)
  def self.all 
    @@all
  end  
  
  
end

