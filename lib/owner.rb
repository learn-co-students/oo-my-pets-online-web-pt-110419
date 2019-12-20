class Owner
  
  attr_accessor :dog, :cat
  
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    save
  end
  
  def save
    @@all << self
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def self.all
    @@all 
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    array = []
    Cat.all.each do |cat|
      if cat.owner == self
        array << cat
      end
    end
    array
  end
  
    def dogs
    array = []
    Dog.all.each do |cat|
      if cat.owner == self
        array << cat
      end
    end
    array
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each { |dog| dog.mood = "happy" }
  end
  
  def feed_cats
    self.cats.each { |cat| cat.mood = "happy" }
  end
  
  def sell_pets
    self.dogs.each do |dog| 
      dog.mood = "nervous"
      dog.owner = nil
    end
    self.cats.each  do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end
    
    def list_pets
     "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end