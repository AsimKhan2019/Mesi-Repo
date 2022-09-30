require './person'
require './student'
require './teacher'
require './book'
require './rental'
require './helpers/validators'
require 'pry'

class Test
  def initialize()
    @testbooks = []
    @testrents = []
    @testpeople = []
  end

  def add_data
    testbook = Book.new
    @testbooks.push(testbook)
    
    teststudent = Student.new
    @testpeople.push(teststudent)

    puts "\nSelect a book from the following list by number"
    put 'Get Book index'
    book_index = 3
    puts "\nSelect a person from the following list by number"
    put 'Get person index'
    person_idx = 3
    print "\n Date(yyyy/mm/dd): "
    rental_date = gets.chomp
    curr_rent = Rental.new(rental_date, @testpeople[person_idx.to_i], @testbooks[book_index.to_i])
    @testrents.push(curr_rent)
    puts 'Rental added successfully'
  end
  binding.pry
end