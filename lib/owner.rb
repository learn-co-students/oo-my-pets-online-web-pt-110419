class Owner
  # code goes here
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select{|i|
      if i.owner == self
        i
      end
    }
  end

  def dogs
    Dog.all.select{|i|
      if i.owner == self
        i
      end
    }
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.each{|i|
    i.mood = "happy"
    }
  end

  def feed_cats
    Cat.all.each{|i|
    i.mood = "happy"
    }
  end

  def sell_pets
    Dog.all.each{|i|
    if i.owner == self
      i.mood = "nervous"
      i.owner = nil
    end}
    Cat.all.each{|i|
    if i.owner == self
      i.mood = "nervous"
      i.owner = nil
    end}
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end
