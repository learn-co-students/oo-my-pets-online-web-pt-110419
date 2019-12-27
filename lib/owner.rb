class Owner
@@all = []
attr_reader :name, :species
def initialize(name)
  @name = name
  @species = "human"
  @@all << self
end

def say_species
  p"I am a #{@species}."
end

def self.all
  @@all
end

def self.count
  @@all.length
end

def self.reset_all
  @@all.clear
end

def cats
  Cat.all.select{|item| item.owner == self}
end

def dogs
 Dog.all.select{|item| item.owner == self}
end

def buy_cat(name)
  name = Cat.new(name, self)
    
end

def buy_dog(name)
  name = Dog.new(name, self)
end

def walk_dogs
  Dog.all.collect{|dog| dog.mood="happy"}
end

def feed_cats
  Cat.all.collect{|cat| cat.mood="happy"}
end

def sell_pets
  Dog.all.each{|dog| dog.mood="nervous"}
  Cat.all.each{|cat| cat.mood="nervous"}
  Dog.all.each{|dog| dog.owner = nil}
  Cat.all.each{|cat| cat.owner = nil}
  
end

def list_pets
  arr = Dog.all.select{|dog| dog.owner == self}
  arr2 = Cat.all.select{|cat| cat.owner == self}
  dog_count = arr.count
  cat_count = arr2.count
  p "I have #{dog_count} dog(s), and #{cat_count} cat(s)."
end
end






