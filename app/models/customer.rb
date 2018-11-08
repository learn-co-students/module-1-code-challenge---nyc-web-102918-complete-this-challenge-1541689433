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

  def self.find_by_name(name)
    @@all.each do |customer|
      if customer.full_name == name
        return customer
      end
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    @@all.map {|customer| customer.full_name}
  end

  def add_review(rating, content, restaurant)
    Review.new(rating, content, self, restaurant)
  end

  def num_reviews
    reviews.select {|review| review.customer == self}.count
  end

  def restaurants
    reviews.map {|review| review.restaurant}.uniq
  end

  private
  def reviews
    Review.all.select {|review| review.customer == self}
  end

end
