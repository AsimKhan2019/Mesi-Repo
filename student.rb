require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, parent_permission: true, name: 'Unknown')
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def class(clsroom)
    @classroom = classroom
    clsroom.students_list.push(self) unless clsroom.students_list.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
