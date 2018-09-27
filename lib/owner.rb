require 'pry'


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
   new_fish =  Fish.new(name)
    pets[:fishes] <<  new_fish
  end 
  
  def buy_cat(name)
   new_cat =  Cat.new(name)
    pets[:cats] <<  new_cat
  end 
  
end