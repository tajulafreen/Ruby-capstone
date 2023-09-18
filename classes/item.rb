require 'date'

class Item
  attr_accessor :genre, :author, :label, :published_date, :archived

  def initialize(genre, author, label, published_date, archived: false)
    @id = Random.rand(1..1000)
    @genre = genre
    @author = author
    @label = label
    @published_date = published_date
    @archived = archived
  end

  def can_be_archived?
     (Date.today.year - @published_date.year) >= 10
  end

  def move_to_archive
    if can_be_archived?
      @archived = true
    end
  end
end