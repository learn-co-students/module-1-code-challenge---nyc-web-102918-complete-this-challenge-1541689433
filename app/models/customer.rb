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

def self.find_by_name(customer)
  Review.all.find do |review|
    review.customer == customer
  end
end

def Customer.find_all_by_first_name(name)
  Review.all.select do |review|
    review.customer.first_name = name
  end
  end

  def self.all_names
    array = []
    @@all.map do |customer_object|
      temp =[]
      temp << customer_object.first_name
      temp << customer_object.last_name
      array << temp.join(" ")
    end
    array
  end











end
