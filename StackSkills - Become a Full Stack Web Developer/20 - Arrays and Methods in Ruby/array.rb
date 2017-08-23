# a Ruby array is an ordered (indexed) collection
# the indices start a zero

# 1. create an array by calling Array's initializer,
#   with or without a length:
names = Array.new
days = Array.new(7)

# 2. create an array by using the [] method:

numbers = Array.[](1, 2, 3, 4, 5)

# 3. create an array using [] syntax:

colors = Array["red", "green", "blue"]

# adding elements to an array:
days = ["Sunday", "Monday", "Tuesday","Wednesday", "Thursday", "Friday", "Saturday"]

names = ["Bob", "Mary", "John", "Jane"]

#access the elemnts of an array with [] notation or each:

puts days[3]
puts colors[0]
names.each{ |n| puts n}

# some important array methods. See official Ruby docs for all array methods.
# get the length of an array with length or size:
puts days.length
puts names.size

# add an element to an array with <<
names << "Chris"
names.each {|n| puts n}

# a stack can easily be implemented with the built in push and pop methods:

stack = Array.new
stack.push 5
stack.push 3
stack.push(stack.pop + stack.pop)
puts stack[0]

# arrays can also be treated as sets with the &, + and - operators
array1 = Array[2, 4, 6, 8]
array2 = Array[3, 4, 5, 8]
puts "set operations"

# & : intersection
puts "&:"
puts array1 & array2

# + : union
puts "+:"
puts array1 + array2

# - : returns first array without any items appearing in second array
puts "-:"
puts array1 - array2

# negative indices count from the end of the array
puts days[6]
puts days[-1]

