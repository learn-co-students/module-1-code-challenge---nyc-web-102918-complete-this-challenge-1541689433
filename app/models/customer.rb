class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end
  def self.find_by_name(name)
    self.all.find do |customer|
      full_name = customer.first_name + " " + customer.last_name
      name == full_name
    end
  end
  def self.find_all_by_first_name(name)
    self.all.find_all {|customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map do |customer|
      full_name = customer.first_name + " " + customer.last_name
      customer.full_name
    end
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end
  def num_reviews
    Review.all.map { |review| review.customer == self}
  end
  def resturants
    Review.all.map { |review| review.restaurant}
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
