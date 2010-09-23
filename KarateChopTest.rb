require 'test/unit'
require 'KarateChop'

class KarateChopTest < Test::Unit::TestCase

  @chopper 
  
  def setup
    @chopper = KarateChop.new
  end
  
  def test_empty_array_returns_minus_one
    actual = @chopper.chop(1, [])
    assert_equal -1, actual
  end
  
  def test_array_of_one_element_returns_the_index_when_its_value_is_requested
    actual = @chopper.chop(1, [1])
    assert_equal 0, actual
  end
  
  def test_array_of_elements_returns_the_index_of_the_correct_element_when_its_value_at_mid_is_requested
    actual = @chopper.chop(3, [1,3,5])
    assert_equal 1, actual
  end
  
end