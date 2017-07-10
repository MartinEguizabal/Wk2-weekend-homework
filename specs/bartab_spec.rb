require('minitest/autorun')
require_relative('../bartab.rb')
require_relative('../room.rb')
require_relative('../guest.rb')


class BartabTest < MiniTest::Test

  def setup
    @guest1_tab = Bartab.new(0)
    @guest2_tab = Bartab.new(0)
    @guest3_tab = Bartab.new(0)
    playlist1 = [@song1, @song3, @song6, @song4]
    playlist2 = [@song1, @song5]
    playlist3 = [@song4, @song2]
    @room1 = Room.new("Sing along", 15, playlist1, 5)
    @room2 = Room.new("Duet", 2, playlist2, 2)
    @room3 = Room.new("Goth", 1, playlist3, 2)
    @guest1 = Guest.new("Sally", 20, @song3)
    @guest2 = Guest.new("Frank", 14, @song5)
    @guest3 = Guest.new("Jen", 10, @song1)
  end

  def test_get_tab_amount
    assert_equal(0, @guest1.amount)
  end

  def test_set_tab_amount
    @guest2_tab = 1
    assert_equal(1, @guest2_tab)
  end

  def test_entry_fee
    @guest3_tab.add_entry_fee(@guest3, @room1)
    assert_equal(5, @guest3_tab.amount)
  end

end