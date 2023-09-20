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

  describe '#can_be_archived?' do
    it 'if the cover state is bad, it should return true' do
      result = @book.send(:can_be_archived?)
      expect(result).to be(true)
    end
  end
end
