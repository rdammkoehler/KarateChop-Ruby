require 'test/unit'
require 'KarateChop'

class KarateChopTest < Test::Unit::TestCase

  @chopper 
  
  def setup
    @chopper = KarateChop.new
  end
  
  def test_nil_array_returns_minus_one
    assert_equal -1, @chopper.chop(1,nil)
  end
  
  def test_empty_array_returns_minus_one
    assert_equal -1, @chopper.chop(1, [])
  end
  
  def test_array_of_one_element_returns_the_index_when_its_value_is_requested
    assert_equal 0, @chopper.chop(1, [1])
  end
  
  def test_array_of_elements_returns_the_index_of_the_correct_element_when_its_value_at_mid_is_requested
    assert_equal 1, @chopper.chop(3, [1,3,5])
  end
  
  def test_array_of_elements_returns_the_index_of_the_correct_element_when_its_value_at_mid_is_requested
    assert_equal 0, @chopper.chop(1, [1,3,5])
  end
  
  def test_get_the_other_end
    assert_equal 2, @chopper.chop(5, [1,3,5])
  end
  
  def test_get_the_other_end_when_its_far_away
    assert_equal 4, @chopper.chop(5, [1,2,3,4,5])
  end
  
  def test_get_the_other_end_when_its_far_away_but_not_too_far_away
    assert_equal 3, @chopper.chop(5, [1,2,3,5,6])
  end
  
  def test_get_the_near_end_when_list_is_long
    assert_equal 1, @chopper.chop(2, [1,2,3,5,6])
  end
  
  def test_get_from_the_upper_part_of_the_lower_half
    assert_equal 3, @chopper.chop(4, [1,2,3,4,5,6,7,8,9,10])
  end    
  
  #from the stuff in the kata
  def test_chop0
      assert_equal -1, @chopper.chop(3, [])
      end
      def test_chop1
      assert_equal -1, @chopper.chop(3, [1])
      end
      def test_chop2
      assert_equal 0, @chopper.chop(1, [1])
      end
      def test_chop3
      assert_equal 0, @chopper.chop(1, [1, 3, 5])
      end
      def test_chop4
      assert_equal 1, @chopper.chop(3, [1, 3, 5])
      end
      def test_chop5
      assert_equal 2, @chopper.chop(5, [1, 3, 5])
      end
      def test_chop6
      assert_equal -1, @chopper.chop(0, [1, 3, 5])
      end
      def test_chop7
      assert_equal -1, @chopper.chop(2, [1, 3, 5])
      end
      def test_chop8
      assert_equal -1, @chopper.chop(4, [1, 3, 5])
      end
      def test_chop9
      assert_equal -1, @chopper.chop(6, [1, 3, 5])
      end
      def test_chop10
      assert_equal 0, @chopper.chop(1, [1, 3, 5, 7])
      end
      def test_chop11
      assert_equal 1, @chopper.chop(3, [1, 3, 5, 7])
      end
      def test_chop12
      assert_equal 2, @chopper.chop(5, [1, 3, 5, 7])
      end
      def test_chop13
      assert_equal 3, @chopper.chop(7, [1, 3, 5, 7])
      end
      def test_chop14
      assert_equal -1, @chopper.chop(0, [1, 3, 5, 7])
      end
      def test_chop15
      assert_equal -1, @chopper.chop(2, [1, 3, 5, 7])
      end
      def test_chop16
      assert_equal -1, @chopper.chop(4, [1, 3, 5, 7])
      end
      def test_chop17
      assert_equal -1, @chopper.chop(6, [1, 3, 5, 7])
      end
      def test_chop18
      assert_equal -1, @chopper.chop(8, [1, 3, 5, 7])
    end
end