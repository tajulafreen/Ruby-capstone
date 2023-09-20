require_relative '../classes/book/book'

module BookModule
 def create_book(publisher, cover_state, publish_date)
    book = Book.new(publisher, cover_state, publish_date)
    @books << book
    puts "Book added: Publisher - #{publisher}, Cover state - #{cover_state}, Published Date - #{publish_date}"
  end
  end

