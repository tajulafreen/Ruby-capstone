require 'json'
require_relative '../classes/music/genre.rb'

class GenreManager
  DATA_FOLDER = 'JSON/'.freeze

  def load_genre
    return [] unless File.exist?("#{DATA_FOLDER}genre.json")

    data = JSON.parse(File.read("#{DATA_FOLDER}genre.json"))
    genres = []
    data['Genres'].map { |genre_data| genres << Genre.new(genre_data['name']) }
    genres
  end
end