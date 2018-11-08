require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rob = Customer.new("rob", "chen")
bri = Customer.new("bri", "b")

chipotle = Restaurant.new("chipotle")
mcd = Restaurant.new("mcd")

review1 = Review.new(bri, chipotle, "okay", 4)
review2 = Review.new(rob, chipotle, "virus", 1)
review3 = Review.new(rob, mcd, "ew", 2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
