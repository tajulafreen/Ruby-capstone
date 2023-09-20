require_relative '../classes/book/label'

describe Book do
  before :each do
    @label = Label.new('title', 'color')
  end

  context 'test the inputs' do
    it 'should return correct value of title' do
      @label = Label.new('title', 'color')
      expect(@label.title).to eq('title')
    end

    it 'should return correct value of color' do
      @label = Label.new('title', 'color')
      expect(@label.color).to eq('color')
    end
  end
end