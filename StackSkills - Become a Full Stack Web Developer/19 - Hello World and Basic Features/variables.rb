# global variables begin with a $

$count = 0

while $count <= 5 do
    #the value of any variable can be interpolated into a string with #:
    puts "#$count"
    $count += 1
end

# instance variables are proceded by a @
class Point
    def initialize(x, y)
        @x = x
        @y = y
    end
    def to_s
        "(#@x, #@y)"
    end
end

point = Point.new(5 , -3)
puts point.to_s

# class variables (those that belong to a class and not to any
# instance of the class) are preceded by @@

class Counter
    @@instance_count = 0
    def initialize
        @@instance_count += 1
    end
    def how_many
        puts "#@@instance_count instances of Counter"
    end
end

counter1 = Counter.new
counter1.how_many
counter2 = Counter.new
counter1.how_many
counter2.how_many
