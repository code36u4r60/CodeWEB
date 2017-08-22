=begin
    control.rb

    Conditional expressions, if..
=end

# the assignment operator ( = ) has lower precedence
# than the equality operator ( == ), sp this works as
# expected:

test = 1 == 2
puts test.to_s

# when in doubt, use parentheses to clarify:

test = (2 >= 1)
puts test.to_s

puts "Enter a number: "
num = gets.to_f

if num > 5 then #o then não é obrigatorio
    puts num.to_s + " is > 5"
elsif num == 5
    puts num.to_s + " is == 5"
else
    puts num.to_s + " is < 5"
end


