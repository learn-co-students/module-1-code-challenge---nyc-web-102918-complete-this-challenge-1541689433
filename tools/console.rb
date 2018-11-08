require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Bob", "Smith")
customer2 = Customer.new("Joe", "Martin")
customer3 = Customer.new("Bob", "Martin")


restaurant1 = Restaurant.new("This Place")
restaurant2 = Restaurant.new("The Other Place")

review1 = Review.new(customer1, restaurant1, "Meh ..", 2)
review2 = Review.new(customer2, restaurant1, "Good", 4)
review3 = Review.new(customer2, restaurant2, "LOVE IT", 5)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
