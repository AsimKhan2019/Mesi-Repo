require 'securerandom'

class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, parent_permission: true, name: 'Unknown')
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @p_permit = parent_permission
  end

  def can_use_services?
    is_of_age? || parent_permission ? true : false
  end

  private

  def is_of_age?
    age >= 18
  end
end
