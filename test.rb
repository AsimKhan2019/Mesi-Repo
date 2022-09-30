require 'pry'
require './person'
require './student'
require './teacher'
require './book'
require './rental'
require './helpers/validators'

class Test
  def initialize()
    @testbooks = []
    @testrents = []
    @testpeople = []
  end

  def add_data
    testbook = Book.new('Microverse', 'Asim')
    @testbooks.push(testbook)
    
    teststudent = Student.new(30, 'Asim', 'y', nil)
    @testpeople.push(teststudent) #pry works till here 

    book_index = gets.chomp # this is the wrong id 
    person_idx = gets.chomp # this is wrong id 
    rental_date = gets.chomp # this is the right date
    curr_rent = Rental.new(rental_date, @testpeople[person_idx.to_i], @testbooks[book_index.to_i])
    @testrents.push(curr_rent)
  end
end
binding.pry

test = Test.new
