class Person

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi my name is #{name}"
  end

  def name
    @name
  end

end

class Student < Person

  def initialize(name)
    super(name)
  end

  def learn
    "I get it"
  end

end

class Instructor < Person

  def initialize(name)
    super(name)
  end

  def teach
    "Everything in Ruby is an Object"
  end

end

nadia = Instructor.new("Nadia")
chris = Student.new("Chris")

puts nadia.greeting
puts chris.greeting

puts nadia.teach
puts chris.learn

# this will give me an undefined method error, Student has no teach method
# puts chris.teach
