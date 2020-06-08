require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/shift'
require './lib/key'
require './lib/date'
require 'pry'

class ShiftTest < Minitest::Test

  def test_it_exists
    shift = Shift.new
    binding.pry
    assert_instance_of Shift, shift
  end

  def test_it_has_letters
    shift = Shift.new
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, shift.alphabet
  end

  def test_it_has_keys
    shift = Shift.new
  end

end
