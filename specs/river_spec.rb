require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
    @fish = Fish.new("Fred")
  end

  def test_set_name
    @river.name = ("Nile")
    assert_equal("Nile", @river.name)
  end

  def test_get_name
    assert_equal("Amazon", @river.name)
  end

  def test_count_fish_in_river
    assert_equal(0, @river.fish_count)
  end

  def test_add_fish_to_river
    @river.fish = "Mike"
    assert_equal("Mike", @river.fish)
  end

  def test_get_fish_name
    assert_equal([], @river.fish)
  end



  def test_remove_fish
    @river.remove_fish(@fish)
    assert_equal(0, @river.fish_count)
  end


end
