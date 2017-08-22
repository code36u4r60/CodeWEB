# ident.rb
# Shows variable and constant definitions
# this is a single line comment

=begin
    this is a multiline comment

    Variables are created by assigning a value to an identifier.
    Variables must begin with a lower case letter
=end

#get input from the user
puts "Enter a number: "
num1 = gets.to_f
puts "Enter another number: "
num2 = gets.to_f

#perform some math:
puts "added: " + (num1 + num2).to_s
puts "subtracted: " + (num1 - num2).to_s
puts "multiplied: " + (num1 * num2).to_s
puts "divided: " + (num1 / num2).to_s 

=begin
    Constants are identifiers whose value cannot be changed once defined.
    Constants must begin with an upper-case letter
=end

Three = 3
puts num1.to_s + " plus " + Three.to_s + " = " + (num1 + Three).to_s

# try to change the value of a constant:
# Three = 3.0