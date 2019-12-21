class Owner
  attr_accessor :name, :pets 
 
  def initialize(Owner)
    @owner = owner
  end
  
  def initialize(name)
    @name = name
  end
  
  bill = Owner.new("Bill")
  bill.owner
end
  bill = Name.new("Bill")
  bill.name
end

bill.owner.name
end

class Owner
  attr_accessor :name, :pets
 
  def initialize(name)
    @name = name
    @pets = []
  end
 
  def add_pets(pets)
    @pets << pets
    owner.pets = self
  end
 
  def pets
    @pets
  end
end

bill.add_pets(bane)
bill.add_pets(jack)

bane.owner.name
jack.owner.name

