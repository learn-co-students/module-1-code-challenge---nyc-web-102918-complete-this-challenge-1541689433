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

def self.all_my_names(customer)
  Review.all.select do |review|
    review.customer == customer
  end
end

def self.find_by_name(customer)
  all_my_names(customer)[0]
end

def Customer.find_all_by_first_name(name)
  Review.all.select do |review|
    review.customer.first_name = name
  end
  end

  def self.all_names
    all.map do |customer|
      customer.full_name
    end
  end

def add_review(restaurant, content, rating)
  Review.new(restaurant, self, content, rating)
end

def num_reviews
  Customer.all_my_names(self).count
end

def restaurants
  Customer.all_my_names(self).map do |review|
    review.restaurant
  end.uniq
end 









end
