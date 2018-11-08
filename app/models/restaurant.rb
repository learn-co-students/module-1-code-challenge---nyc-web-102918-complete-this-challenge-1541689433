class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name }
  end
  def customers
    Review.all.each  do |review|
      if review.resturant == self

      review.customer
    end
  end
end
    def reviews
      Review.all.map {|review| review.restaurant == self}
  end
  def average_star_rating
    sum = 0
    reviews.each do |review|
      sum += review.rating
    end
    avg = sum / reviews.length
    avg
  end

  def self.all
    @@all
  end

end
