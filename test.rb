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
    binding.pry
    testbook = Book.new('Microverse', 'Asim')
    @testbooks.push(testbook)
    binding.pry
    teststudent = Student.new(30, 'Asim', 'y', 5)
    @testpeople.push(teststudent)
    book_index = 3
    if @testbooks[book_index.to_i]
      person_idx = 3
      if @people[person_idx.to_i]
        rental_date = '2022-03-04'
        curr_rent = Rental.new(rental_date, @testpeople[person_idx.to_i], @testbooks[book_index.to_i])
        @testrents.push(curr_rent)
      else
        puts 'Enter in a correct person id and try again'
      end
    else
      puts 'Enter in a correct book id and try again'
    end
  end
end

test = Test.new
test.add_data
