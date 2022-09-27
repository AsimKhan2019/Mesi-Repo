# frozen_string_literal: true

require './person'

# implement the Student class
class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, parent_permission: true, name: 'Unknown')
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
