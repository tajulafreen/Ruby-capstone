require_relative 'Modules/music_module'
require_relative 'classes/music/music_album'
require_relative 'Modules/genre_module'
require_relative 'Modules/book_module'
require_relative 'classes/book/book'

class App
   include MusicModule
   include GenreModule
   include BookModule
  def initialize
    @songs = []
    @books = []
    @games = []
    @genres = []
    @labels = []
    @authors = []
  end

  def create_musicalbum
    MusicModule.add_music_album(self)
  end

  
  def add_book(app)
    puts 'Please enter the Publisher:'
    publisher = gets.chomp
    puts 'Please enter the covers state:'
    cover_state = gets.chomp
    puts 'Please enter the published date of the book:'
    publish_date = gets.chomp
    app.created_book(publisher, cover_state, publish_date)
  end
end
App.new