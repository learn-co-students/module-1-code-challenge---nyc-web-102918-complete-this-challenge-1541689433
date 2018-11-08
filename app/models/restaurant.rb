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

  def self.find_by_name(name)
    @@all.find {|mrr| mrr.name == name}
  end

  def customers
    Review.all.select {|sn| if sn.restaurant == self.name
    sn.customer}.uniq
    #This method should return a unique array of customers who have reviewed this restaurant before. To do this, I should reach into the review class, pick from the all variable, and for every review that matches the restaurant, return the customer value.
  end

  def reviews
    Review.all.select {|rest| rest.restaurant == self.name}
  end

  def average_star_rating
  end
end
