require('minitest/autorun')
require_relative('../room.rb')
require_relative('../guest.rb')
# require_relative('../song.rb')

class RoomTest < MiniTest::Test

  def setup
    playlist1 = [@song1, @song3, @song6, @song4]
    playlist2 = [@song1, @song5]
    playlist3 = [@song4, @song2]
    @room1 = Room.new("Sing along", 15, playlist1, 5)
    @room2 = Room.new("Duet", 2, playlist2, 2)
    @room3 = Room.new("Goth", 1, playlist3, 2)
    @guest1 = Guest.new("Sally", 20, @song3)
    @guest2 = Guest.new("Frank", 14, @song5)
    @guest3 = Guest.new("Jen", 10, @song1)
    @all_tabs = Bartab.new(0, 0, 0)
  end

  def test_get_room_name
    assert_equal("Duet", @room2.name)
  end

  def test_get_room_capacity
    assert_equal(1, @room3.capacity)
  end

  def test_count_guests__zero
    assert_equal(0, @room1.count_guests)
  end

  def test_add_guest_to_room
    @room1.add_guest_to_room([@guest1])
    assert_equal(1, @room1.count_guests)
  end

  def test_add_guests_to_room__too_many_guests
    # result = @room1.add_guest_to_room([@guest1, @guest2])
    @room3.add_guest_to_room(@guest1)
    result = @room3.add_guest_to_room(@guest2)
    assert_equal(1, @room3.count_guests)
    assert_equal("Oops, sorry the room's full!", result)
  end

end