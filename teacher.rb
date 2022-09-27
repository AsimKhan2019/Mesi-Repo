# frozen_string_literal: true

require './person'

# implement the Teacher class
class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, parent_permission: true, name: 'Unknown')
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
