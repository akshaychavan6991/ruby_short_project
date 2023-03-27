
# accessing varibles outside of class isnt possible so we implement getter and setter methods to read and update values
# in variblesruby getter and setter used to assign variables values to the object of the class
#attr_reader , attr_writer respectively are the alternative to getter and setter 
# or you can use attr_accessor

class Parent
    def initialize(name , age)
        @name , @age = name , age
    end

    def get_name
        p @name
    end

    def get_age
       p  @age
    end

    def set_name=(name)
        @name = name
    end

    def set_age=(age)
        @age = age
    end
end

obj = Parent.new("akshay" , 26)
obj.set_name= "rahul"
obj.get_name
obj.set_age= 23
obj.get_age