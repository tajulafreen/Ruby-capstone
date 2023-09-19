class App
  def initialize
    @music_album = []
    @books = []
    @games = []
    @genres = []
    @labels = []
    @authors = []

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
