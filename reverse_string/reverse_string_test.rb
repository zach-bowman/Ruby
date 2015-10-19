require_relative 'reverse_string'
require 'test/unit'

class TestReverseString < Test::Unit::TestCase
 
  def test_empty_string
    assert_equal('', reverse_string(''))
  end
  
  def test_even_string
    assert_equal('ihg fed cba', reverse_string('abc def ghi'))
  end
  
  def test_odd_string
    assert_equal('cba', reverse_string('abc'))
  end

end
