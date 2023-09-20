require_relative 'Modules/music_module'
require_relative 'classes/music/music_album'
require_relative 'Modules/genre_module'

class App
  include MusicModule
   include GenreModule
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
end
App.new
