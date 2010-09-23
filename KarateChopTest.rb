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
  
  def test_array_of_elements_returns_the_index_of_the_correct_element_when_its_value_at_mid_is_requested
    actual = @chopper.chop(1, [1,3,5])
    assert_equal 0, actual
  end
  
  def test_get_the_other_end
    actual = @chopper.chop(5, [1,3,5])
    assert_equal 2, actual
  end
  
  def test_get_the_other_end_when_its_far_away
    actual = @chopper.chop(5, [1,2,3,4,5])
    assert_equal 4, actual
  end
  
  def test_get_the_other_end_when_its_far_away_but_not_too_far_away
    print "doit "
    actual = @chopper.chop(5, [1,2,3,5,6])
    puts "end"
    assert_equal 3, actual
  end
  
end