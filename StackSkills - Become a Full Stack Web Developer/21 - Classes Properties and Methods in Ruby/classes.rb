class Point
    # attributes (like @x and @y here) are "protected",
    # meaning they can only be directly accessed within
    # the class or a subclass
    def initialize(x, y)
        @x, @y = x, y
    end

    #define "reader" methods (getters)
    def getX() @x end  # one way to define a getter...        
    def getY() @y end
    
    # we can also define "writer" methods (setters)
    def setX(x) @x = x end
    def setY(y) @y = y end
    
    def to_s
        "(#{@x}, #{@y})"
    end

end

class Line
    def initialize(p1, p2)
        @start, @end = p1, p2
        @dx = @start.getX - @end.getX #using the reader methods
        @dy = @start.getY - @end.getY
    end

    def length
        Math.sqrt(@dx**2 + @dy**2)
    end

    def slope
        @dy / @dx rescue puts "slope is undefined"
    end
end

#make two points
point1 = Point.new(0, 0)
point2 = Point.new(3, 0)

#use the two points to define a line
line = Line.new(point1, point2)
puts "New line from #{point1.to_s} to #{point2.to_s}"

#get the length and slope of the line, and print
puts "length is #{line.length}"
puts "slope is #{line.slope}"

#change point1:
point1.setX(4)
point1.setY(5)
#but the line object is unchanged
puts "length is #{line.length}"
puts "slope is #{line.slope}"

#define a new line with the new value of point1:
line2 = Line.new(point1, point2)
puts "length is #{line2.length}"
puts "slope is #{line2.slope}"
