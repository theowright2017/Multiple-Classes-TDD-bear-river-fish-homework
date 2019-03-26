require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Barry", "Grizzly")
    @river = River.new("Amazon")
    @fish = Fish.new("Fred")
  end

  def test_set_name_and_type
    @bear.name = ("Bob")
    @bear.type = ("Fuzzy")
    assert_equal("Bob", @bear.name)
    assert_equal("Fuzzy", @bear.type)
  end

  def test_get_name_and_type
    assert_equal("Barry", @bear.name)
    assert_equal("Grizzly", @bear.type)
  end

  def test_count_contents_of_stomach
    assert_equal(0, @bear.food_count)
  end

  def test_add_item_to_stomach
    @bear.add_to_stomach(@fish)
    assert_equal(1, @bear.food_count)
  end


  def test_take_fish_from_river
    @river.add_fish(@fish)
    @bear.eat_fish_from_river(@river)
    assert_equal(1, @bear.food_count)
    assert_equal(0, @river.fish_count)
  end

  def test_bears_roar
    assert_equal("Rooaar", @bear.roars)
  end

end
