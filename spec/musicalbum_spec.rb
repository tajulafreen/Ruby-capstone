require_relative '../classes/music/music_album'

describe MusicAlbum do
  describe '#can_be_archived?' do
    context 'Return Boolean based on difference between published date and listed in spotify' do
      it 'when the album is old enough and present in spotify it will return true' do
        music_album = MusicAlbum.new('20-11-2003', true)
        expect(music_album.can_be_archived?).to eq(true)
      end

      it 'when the album is not old enough and listed in spotify it will return false' do
        music_album = MusicAlbum.new('20-08-2003', true)
        expect(music_album.can_be_archived?).to eq(false)
      end

      it 'when the album is old enough and not listed in spotify it will return false' do
        music_album = MusicAlbum.new('20-02-2003', false)
        expect(music_album.can_be_archived?).to eq(false)
      end

      it 'when the album is not old enough and not listed in spotify it will return false' do
        music_album = MusicAlbum.new('20-03-2003', false)
        expect(music_album.can_be_archived?).to eq(false)
      end
    end
  end

  describe '#Should validate user input' do
    context 'when user inputs publish date' do
      it 'returns correct published date' do
        music_album = MusicAlbum.new('20-09-2003', true)
        expected_date = Date.parse('20-07-2003')
        expect(music_album.publish_date).to eq(expected_date)
      end

      it 'returns correct state of on_spotify' do
        music_album = MusicAlbum.new('20-06-2003', false)
        expect(music_album.on_spotify).to eq(false)
      end
    end
  end
end
