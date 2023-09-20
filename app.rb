require_relative 'Modules/music_module'
require_relative 'classes/music/music_album'

class App
  include MusicModule
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
