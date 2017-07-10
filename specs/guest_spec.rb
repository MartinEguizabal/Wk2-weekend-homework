require('minitest/autorun')
require_relative('../guest.rb')
require_relative('../room.rb')
# require_relative('../song.rb')
  
class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Sally", 20, @song3)
    @guest2 = Guest.new("Frank", 14, @song5)
    @guest3 = Guest.new("Jen", 10, @song1)
    playlist1 = [@song1, @song3, @song6, @song4]
    playlist2 = [@song1, @song5]
    playlist3 = [@song4, @song2]
    @room1 = Room.new("Sing along", 15, playlist1)
    @room2 = Room.new("Duet", 2, playlist2)
    @room3 = Room.new("Goth", 1, playlist3)
  end

  def test_get_name
    assert_equal("Jen", @guest3.name)
  end

  def test_favourite_song__favourite
    assert_equal("Whooa", @guest1.favourite_song(@room1))
  end

end