require_relative '../item'
require 'date' # Ensure the Date module is required

class MusicAlbum < Item
  attr_reader :id, :on_spotify

  def initialize(publish_date, on_spotify)
    # Convert the publish_date to a Date object
    publish_date = Date.parse(publish_date)
    super(publish_date)
    @id = Random.rand(1...1000)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    (Date.today.year - @publish_date.year) >= 10 && @on_spotify == true
  end
end
