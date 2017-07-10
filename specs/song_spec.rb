relative('minitest/autorun')
require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Yellow Submarine")
    @song2 = Song.new("Smells like teen spirit")
    @song3 = Song.new("Patience")
    @song4 = Song.new("Welcome to the jungle")
    @song5 = Song.new("For those about to rock")
    @song6 = Song.new("California love")
  end

  def get_song_name
    assert_equal("Patience", @song3.name)
  end

end