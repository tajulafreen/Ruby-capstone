require_relative '../classes/item'
require_relative '../classes/book/book'

describe Book do
  before :each do
    @book = Book.new('Publisher', 'bad')
  end

  describe 'Initialize parameters' do
    it 'throws an ArgumentError when given less than 2 arguments' do
      expect { Book.new('Publisher') }.to raise_error(ArgumentError)
    end
  end
end
