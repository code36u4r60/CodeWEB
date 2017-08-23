# methods

=begin 
    Methods are defined with the keyword "def"

    def method_name(parameter_list)
        ...statements
    end

=end

#the last statement in a method is the return value
def add(a, b)
    a + b 
end

#calling the add function:
puts "3 + 5 = " + add(3,5).to_s

#the parens can be omitted in the function call if the context allows:
sum = add 4, 2.3
puts "sum = " + sum.to_s

#the return statement can be used, mainly for returning more than one value
def make_array(i, j, k)
    return i, j , k 
end

puts make_array(20, 30, 42)

# a method can set default values for parameters not passed:
def power(a, b = 2)
    return a**b 
end

puts power 3
puts power 3, 3

# a method can have a variable number of parameters
# the 'splat' operator ( * ) gathers up parameters
# into an array
def average(*grades)
    sum = 0
    for g in 0..grades.length
        sum += grades[g].to_f
    end
    sum / grades.length
end

avg = average(2, 4, 6, 9, 19)
puts "Average of 2, 4, 6, 9, 19 is #{avg}"

# * can also figure out which parameters to gather:
def square_table(first, second, *roots, endline)
    roots.each do |root|
        printf("%s %d %s %d %s", first, root, second, root**2, endline)
    end
end

square_table("The square of","is",1,2,3,4,5,6,"\n")

