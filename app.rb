require_relative 'Modules/music_module'
require_relative 'classes/music/music_album'
require_relative 'Modules/genre_module'
require_relative 'dataMangement/music_manager'
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
    @music_album_data = MusicManager.new
    load_data
  end

  def create_musicalbum
    MusicModule.add_music_album(self)
  end

  def load_data
    @songs = @music_album_data.load_music_album
  end
end
App.new
