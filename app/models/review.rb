require "pry"
class Review

  @@all = []

  attr_reader :restaurant, :customer, :review, :rating

  def initialize (restaurant, customer, review, rating)
    @restaurant = restaurant
    @customer = customer
    @review = review
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end





end
