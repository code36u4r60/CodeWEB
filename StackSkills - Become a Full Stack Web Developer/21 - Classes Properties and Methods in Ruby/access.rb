=begin 
    Attributes of a class are always protected; we can designate
    them to have accessors with attr_read, attr_write and 
    attr_accessor (or write getters and setters explicitly)

    Methods can be public, private, or protected.
    Public methods can be used anywhere a class instance is visible.
    Protected methods can only be used within a class or subclass.
    Private methods cannot be sent to an explicit receiver.

    The default method access is public.
=end

class Parent
    def initialize(a)
        @a = a 
    end

    #this method is public
    def putsA() puts @a end
    
    protected
    def getA() @a end
    
    private
    def reverseA() @a.reverse end

end

class Child < Parent

    def initialize(a)
        super(a)
        puts "This object is a #{self}"
        putsA               #Ok, putsA is public
        puts getA           #OK, getA is protected
        puts reverseA       #OK. reverseA is private but there is no explicit receiver

        self.putsA          #OK, public
        puts self.getA      #OK, protected
        puts self.reverseA rescue puts "private message sent to explicit receiver" 
        #Not OK, private with explicit receiver
    end
end

child = Child.new("Test")