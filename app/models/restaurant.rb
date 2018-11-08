class Restaurant
  attr_accessor :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

def self.all
  @@all
end

def self.all_names
Restaurant.all.map do |restaurant|
 restaurant.name
 end
end

def self.find_by_name(name)
 Restaurant.all_names.find do |restaurant|
   restaurant == name
 end
end





end
