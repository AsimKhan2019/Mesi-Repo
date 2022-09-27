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

# Private method is_of_age? that returns true if @age is greater or equal to 18
# and false otherwise.
# Public method can_use_services? that returns true if person is of age or if
# they have permission from parents.
