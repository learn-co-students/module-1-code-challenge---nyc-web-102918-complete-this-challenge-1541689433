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

  def self.all_by_name(name)
    Review.all.select do |review|
    review.restaurant == name
  end
  end

  def self.find_by_name(name)
   all_by_name(name)[0]
  end


  def customers
    Restaurant.all_by_name(self).map do |review|
      review.customer
    end.uniq
  end

  def reviews
    Restaurant.all_by_name(self).map do |review|
      review.review
    end
  end

  def average
    count = 0
    sum = 0
    Restaurant.all_by_name(self).each do |review|
      sum += review.rating
      count += 1
    end
    sum / count
  end

  def longest_review
    Restaurant.all_by_name(self). sort_by do |review|
      #binding.pry
      review.review.length
    end[-1]
  end












end
