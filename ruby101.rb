# ###########################################################
# ARRAY
# ###########################################################

names = ["Igor", "Mike", "Oleg"]
names.each do |name|
  print "Hello #{name.upcase}"
end

# ###########################################################
# SIMPLE CONTROL FLOW
# ###########################################################

name = "Thomas"
if name == "Thomas"
    puts "found Thomas"
else
    puts "NOT found Thomas"
end

puts "This is Thomas" if name == "Thomas"

# ###########################################################
# LOOP
# ###########################################################

x = 0
while x < 3
  puts "Hello"
  x += 1
end

3.times do
  puts "times"
end

# ###########################################################
# METHODS
# ###########################################################

def function_name parameter_name = "World!"   #"World!" is the default parameter
#def function_name parameter_name             #a parameter is required
  puts "Hello #{parameter_name}"
end
function_name "Thomas"

# ###########################################################
# CLASS = design/blue print  of an object
# ###########################################################

class Usps
  def home_page
    puts "Welcome to home page"
  end
  def zip_code_page
    puts "Welcome to ZipCode page"
  end
end
usps = Usps.new
usps.home_page