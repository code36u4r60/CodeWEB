class Point
    def initialize(x, y)
        @x, @y = x, y
    end

    # attr_reader and attr_writer don't alter the protected
    # status of instance variables, they create public methods
    # to access the instance variables.

    # define "reader" methods (getters)
    attr_reader:x #allows .x access
    attr_reader:y

    # we can also define "writer" methoids (setters)
    attr_writer:x #allows .x = ? access
    attr_writer:y

    def to_s
        "(#{@x}, #{@y})"
    end
end

point = Point.new(4, -7)
puts "point is #{point.to_s}"
point.x = -2
point.y = 6
puts "point is (#{point.x}, #{point.y})"

# attr_reader gives "read-only" access,
# attr_write gives "write-only" access.
# If we want "read-write" access, we can 
# use attr_accessor.

class ColorPoint
    def initialize(x, y, color)
        @x, @y = x, y
        @color = color
    end

    # make color read-write
    attr_accessor:color

    #make x and y read-only
    attr_reader:x
    attr_reader:y
end

cp = ColorPoint.new(3, -5, "red")
puts "Color point (#{cp.x}, #{cp.y}) is #{cp.color}"

cp.color = "blue"
puts "Color point (#{cp.x}, #{cp.y}) is #{cp.color}"
