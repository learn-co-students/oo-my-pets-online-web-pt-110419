require 'pry'
class Cat

@@all = []

attr_accessor :owner
attr_reader :name, :mood

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    # binding.pry
  end

  def mood=(mood)
    @mood = mood
  end

  def self.all
    @@all
  end
end
