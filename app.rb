MENU_OPTIONS = {
  1 => { label: 'List all books', method: nil },
  2 => { label: 'List all movies', method: nil },
  3 => { label: 'List all games', method: nil },
  4 => { label: 'List all genre', method: nil },
  5 => { label: 'List all authors', method: nil },
  6 => { label: 'List all sources', method: nil },

  7 => { label: 'create a book', method: nil },
  8 => { label: 'create a movie', method: nil },
  9 => { label: 'create a game', method: nil },
  11 => { label: 'create a genre', method: nil },
  12 => { label: 'create a author', method: nil },
  13 => { label: 'create a source', method: nil },

  0 => { label: 'Quit', method: nil }
}.freeze


class App
  attr_reader :people, :books, :rentals

  def initialize
    @music_album = []
    @books = []
    @movies = []
    @games = []
    @genres = []
    @labels = []
    @authors = []
    @sources = []

    at_exit { save_all_objects }
  end

  def add_book(books, labels); end

  def add_genre(genre); end

  def add_movie(movies); end

  def add_game(game); end

  def list_games; end

  def list_books; end

  def list_movies; end

  def list_labels; end

  def list_authors; end

  def list_sources; end

  def save_all_objects; end
end
