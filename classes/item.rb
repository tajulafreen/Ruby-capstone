class Item
  attr_accessor :genre, :author, :label, :published_date, :archived

  def initialize(genre, author, label, published_date, archived: true)
    @id = Random.rand(1..1000)
    @genre = genre
    @author = author
    @label = label
    @published_date = published_date
    @archived = archived
  end
end
