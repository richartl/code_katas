require 'test/unit'
require './numbers'

class NumbersTest < Test::Unit::TestCase
  def test_one_digit
    assert_equal 'zero', Numbers.to_word(0)
    assert_equal 'nine', Numbers.to_word(9)
  end

  def test_teenagers
    assert_equal 'nineteen', Numbers.to_word(19)
    assert_equal 'twelve', Numbers.to_word(12)
  end

  def test_two_digits
    assert_equal 'twenty one', Numbers.to_word(21)
    assert_equal 'eighty eight', Numbers.to_word(88)
  end

  def test_three_digits
    assert_equal 'one hundred twenty one', Numbers.to_word(121)
    assert_equal 'six hundred eighty eight', Numbers.to_word(688)
  end
end
