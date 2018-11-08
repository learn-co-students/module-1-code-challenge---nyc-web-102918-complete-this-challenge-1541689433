require_relative 'review.rb'

class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, rating, content)
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}.count
  end

  def reviews_list
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    reviews_list.map {|review| review.restaurant}.uniq
  end

end
