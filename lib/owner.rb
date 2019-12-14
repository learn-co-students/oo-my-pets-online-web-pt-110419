require 'pry'
class Owner

attr_reader :name, :species

@@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end


  def say_species
    p "I am a human."
  end

  def self.all
    # returns all instances of self
    @@all
  end

  def self.count
    # returns the number of owners that have been created
    # where are the instances of owners....
    # they are in @@all
    @@all.count
  end

  def self.reset_all
    # resets the owners that have been created
    # do I need to clear the owner instances
    @@all.clear
  end

  def cats
    # returns a collection of all the cats that belong to an owner
    # where is the collection of cats?....its in the Cats class
    # how do I call on that collection in the Owner class? It would be Cats.all
    # how do I return the Cat that matches to a specific owner?
    # Cat.all is an array but I need to return exact instances how? Which method to use?
    Cat.all.select {|cat_array| cat_array.owner == self}
    # select returns an array of values that are true giveen the condition in the block
    # select returns values that are true given the condition in the block
    # cat_owner represents each object within the Cat.all array
    # .owner looks at the owner value for each object instance
    # self refers to the instance of the Owner class

  end

  def dogs
    Dog.all.select {|dog_array| dog_array.owner == self}
  end

  def buy_cat(cat_name)
    # can buy a cat that is an instance of the Cat class
    # how can an owner buy a cat?
    # I need to create a new cat
    #the initialize method in Cats assigns an owner to an instance of Cats. But the method requires two arguments which is fine since we have the name provided `cat_name` and self which represents the Owner
    Cat.new(cat_name, self)
    # binding.pry
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs
    # how do I access the mood of the dogs?
    # do I need to create a new dog?....No beecause an instance of Dog was created in the above method
    # Dog.all represents all the dogs and its an array data type
    # we need to access the mood attribute in each instance of a dog so we will use map
    # change string value of the mood attribute to happy
    dogs.each {|dog| dog.mood = "happy"}

  end

  def feed_cats
    cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end

    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    # dogs.each {|dog| dog.mood = "nervous"}
    # dogs.each {|dog| dog.owner = nil}
    # cats.each {|cat| cat.mood = "nervous"}
    # cats.each {|cat| cat.owner = nil}
  end

  def list_pets
    p "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end
