require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Finlay")
  end


  def test_set_name
    @fish.name = ("Fred")
    assert_equal("Fred", @fish.name)
  end

  def test_get_name
    assert_equal("Finlay", @fish.name)
  end
  

end
