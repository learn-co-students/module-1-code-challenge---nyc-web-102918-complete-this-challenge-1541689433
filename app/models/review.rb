class Review

attr_accessor :rating, :content
attr_reader :customer, :restaurant
@@all = []

def initialize(restaurant, customer)
@restaurant = restaurant
@customer = customer
@rating = rating
@content = content
@@all << self
end

def self.all
  @@all
end

def self.customer
Self.customer
end

def self.restaurant
Self.restaurant
end

def self.rating
Review.rating
end


end
