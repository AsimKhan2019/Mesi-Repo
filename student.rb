require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name, p_permit, classroom)
    super(age, name, p_permit)
    @classroom = classroom
  end

  def classes(classroom)
    @classroom = classroom
    classroom.add_student.push(self) unless classroom.add_student.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
