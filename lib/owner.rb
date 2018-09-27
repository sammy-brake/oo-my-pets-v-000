class Owner
  attr_accessor :pets, :species  
  attr_reader :species 
  @@all = []
  
  def initialize(name, species)
    @name = name 
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self 
    @species = species 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.reset_all 
    @@all = []
  end 
  
  def self.count 
    self.all.count 
  end 
  
  
  
  
end