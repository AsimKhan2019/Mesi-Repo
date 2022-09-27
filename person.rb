require 'securerandom'
require './nameable'

# Person class in order to create a new person with required params
class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, parent_permission: true, name: 'Unknown')
    super()
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @p_permit = parent_permission
  end

  def can_use_services?
    of_age? || parent_permission ? true : false
  end

  def correct_name
    @name
  end

  private

  def of_age?
    age >= 18
  end
end
