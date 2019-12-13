class Owner
  # code goes here
  attr_reader :name, :species
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @species = 'human'
    @@all << self 
  end 
  
  def say_species
    "I am a #{self.species}."
  end 
  
  def self.all
    @@all 
  end 
  
  def self.count
    count = 0 
    self.all.each do 
      count += 1 
    end 
    count
  end 
  
  def self.reset_all 
    @@all = [] 
  end 
  
  def buy_cat(name)
    new_cat = Cat.new(name, self)
  end 
  
  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end 
  
  def walk_dogs
    Dog.all.each do |dog|
      if dog.owner == self 
        dog.mood = 'happy'
      else 
      end 
    end 
  end 
  
  def feed_cats
    Cat.all.each do |cat|
      if cat.owner == self 
        cat.mood = 'happy'
      else
      end 
    end 
  end 
  
  def cats 
    cat_list = []
    Cat.all.each do |cat| 
      if cat.owner == self 
        cat_list << cat
      else 
      end 
    end 
    cat_list 
  end 
  
  def dogs 
    dog_list = []
    Dog.all.each do |dog| 
      if dog.owner == self 
        dog_list << dog 
      else 
      end 
    end 
    dog_list
  end 
  
  def sell_pets 
    Cat.all.each do |cat| 
      if cat.owner == self 
        cat.mood = 'nervous'
        cat.owner = nil 
      else 
      end 
    end 
    
    Dog.all.each do |dog| 
      if dog.owner == self 
        dog.mood = 'nervous'
        dog.owner = nil
      else 
      end 
    end 
  end 
  
  def list_pets
    cat_count = 0 
    dog_count = 0 
    
    Cat.all.each do |cat|
      if cat.owner == self 
        cat_count += 1 
      else 
      end 
    end 
    
    Dog.all.each do |dog|
      if dog.owner == self 
        dog_count += 1 
      else 
      end 
    end 
    
   "I have #{dog_count} dog(s), and #{cat_count} cat(s)."
  end 
  
end