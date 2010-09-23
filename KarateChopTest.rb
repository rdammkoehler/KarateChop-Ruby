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

  def test_array_of_elements_returns_the_index_of_the_correct_element_when_its_value_below_mid_is_requested
    actual = @chopper.chop(3, [3,5,7])
    assert_equal 0, actual
  end

  def test_array_of_elements_returns_the_index_of_the_correct_element_when_its_value_above_mid_is_requested
    actual = @chopper.chop(3, [0,1,3])
    assert_equal 2, actual
  end
  
  def test_array_of_elements_returns_the_index_of_the_correct_element_when_its_value_above_mid_in_a_long_list_is_requested
    print "above "
    actual = @chopper.chop(7, [0,1,3,4,5,6,7])
    puts "end"
    assert_equal 6, actual
  end
  
end