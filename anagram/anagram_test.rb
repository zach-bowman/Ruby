require_relative 'anagram'
require 'test/unit'

class TestIsAnagram < Test::Unit::TestCase
 
  def test_nil_arguments_error
    assert_raise(ArgumentError){ is_anagram?() }
  end
  
  def test_single_incorrect_arguments_error
    assert_raise(ArgumentError){ is_anagram?(1) }
  end
  
  def test_multiple_incorrect_arguments_error
    assert_raise(ArgumentError){ is_anagram?('abcde12345', true, '54321edcba') }
  end
  
  def test_single_empty_arguments_true
    assert_equal(true, is_anagram?(''))
  end
  
  def test_single_arguments_true
    assert_equal(true, is_anagram?('abcde12345'))
  end
  
  def test_multiple_arguments_true
    assert_equal(true, is_anagram?('abcde12345', '54321edcba'))
  end

  def test_multiple_arguments_spaces_true
    assert_equal(true, is_anagram?('abc de1234 5', '54 3 21e d c b a'))
  end
  
  def test_multiple_arguments_false
    assert_equal(false, is_anagram?('abcde12345','vwxyz56789'))
  end
    
  def test_more_multiple_arguments_false
    assert_equal(false, is_anagram?('abcde12345', '54321edcba', 'vwxyz56789'))
  end
  
end
