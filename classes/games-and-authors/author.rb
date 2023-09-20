require 'json'
require_relative '../item'

class Author < Item
  attr_accessor :first_name, :last_name, :items

  def initialize(first_name, last_name)
    super()
    @id = gerator
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def gerator
    rand(1..1_000_000)
  end

  def add_item(item)
    item.author = self
    @items << item
  end
end
