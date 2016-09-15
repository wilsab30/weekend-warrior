gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'roman_reverter'

class RomanReverterTest < Minitest::Test
  def test_revert_I
    assert_equal 1, Roman.reverter("I")
  end

  def test_revert_V

    assert_equal 5, Roman.reverter("V")
  end

  def test_revert_X

    assert_equal 10, Roman.reverter("X")
  end

  def test_revert_L

    assert_equal 50, Roman.reverter("L")
  end

  def test_revert_C

    assert_equal 100, Roman.reverter("C")
  end

  def test_revert_D

    assert_equal 500, Roman.reverter("D")
  end

  def test_revert_M

    assert_equal 1000, Roman.reverter("M")
  end

  def test_symbol_pair

    assert_equal 2, Roman.reverter("II")
  end

  def test_symbol_string

    assert_equal 30, Roman.reverter("XXX")
  end

  def test_mixed_symbol_string

    assert_equal 17, Roman.reverter("XVII")
  end

  def test_two_hundred_and_twenty_two

    assert_equal 222, Roman.reverter("CCXXII")
  end

  def test_first_subtracted_value

    assert_equal 4, Roman.reverter("IV")
  end

  def test_another_subtracted_value

    assert_equal 9, Roman.reverter("IX")
  end

  def test_nineteen

    assert_equal 19, Roman.reverter("IXX")
  end

  def test_forty

    assert_equal 40, Roman.reverter("XL")
  end

  def test_five_hundred_and_seventy_six

    assert_equal 576, Roman.reverter("DLXXVI")
  end

  def test_four_thousand_nine_hundred_and_ninety_nine
    
    assert_equal 4999, Roman.reverter("MMMMCMXCIX")
  end
end
