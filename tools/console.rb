require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
restaurant1 = Restaurant.new("Petes")
restaurant2 = Restaurant.new("Joes")
restaurant3 = Restaurant.new("Bettys")
restaurant4 = Restaurant.new("Janes")

customer1 = Customer.new("Bruce", "Hopewell")
customer2 = Customer.new("Adam", "Smith")
customer3 = Customer.new("Paul", "Jones")
customer4 = Customer.new("Betty", "Davis")

review1 = Review.new(restaurant1, customer1)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line
