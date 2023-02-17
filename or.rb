#create person object
#create Dog object
#object relationship can be established to create owner object
#using owner object we create a custom method, walk_dog
#create  owner object

class Person
    attr_accessor :name,:age

    def initialize(name,age)
        @name = name
        @age = age
    end
end

class Dog
    attr_accessor :name,:breed

    def initialize(name,breed)
        @name = name
        @breed = breed
    end

    def sound
        puts "bark"
    end
end 

class Owner
    attr_accessor :person,:dog

    def initialize(person,dog)
        @person = person
        @dog = dog
    end

    def walk_dog
        puts "#{person.name} is walking #{dog.name} the #{dog.breed}"
        dog.sound
    end
end

person = Person.new("Evance",26)
dog = Dog.new("Rex","German")

#duck typing :object relationship
owner = Owner.new(person,dog)
#method call
owner.walk_dog


#object relationship will work by combining simpler objects for a complex object
#i.e owner