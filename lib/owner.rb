class Owner
  # code goes here
  @@all = []
  attr_accessor :cat , :dog 
  attr_reader :name , :species 
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self 
  end 
  
  def say_species
    "I am a human."
  end 
  
  def self.all
    @@all 
  end 
  
  def self.count 
    @@all.length 
  end 
  
  def self.reset_all
    @@all = []
  end 
  
  def cats 
    Cat.all.select{|cat| cat.owner == self }
  end 
  
  def dogs 
    Dog.all.select{|dog| dog.owner == self }
  end 
  
  def buy_cat(cats)
    Cat.new(cats,self)
   
  end 
  
  def buy_dog(dogs)
    Dog.new(dogs,self)
   
  end 
  
  
  
  def walk_dogs
    self.dogs.each{|dog| dog.mood = "happy"}
  end 
    
  def feed_cats
    self.cats.each{|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    self.dogs.each{|dog| dog.mood = "nervous" and dog.owner = nil}
    self.cats.each{|dog| dog.mood = "nervous" and dog.owner = nil}
  end 


  def list_pets
  return "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."

  
  end 
  
end