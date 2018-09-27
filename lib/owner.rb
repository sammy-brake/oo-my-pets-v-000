class Owner
  attr_accessor :pets, :name 
  attr_reader :species 
 
  @@all = []
  
  def initialize(name)
    @name = name 
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self 
  
    @species = "human" 
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
  
  def say_species
    
     "I am a human."
  end 
  
  def buy_fish(name)
    pets[:fishes] << name 
  end 
  
end