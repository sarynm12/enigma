require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/key'
require 'pry'

class KeyTest < Minitest::Test

  def test_it_exists
    key = Key.new
    assert_instance_of Key, key
  end

  def test_it_returns_a_random_5_digit_number
    key = Key.new
    assert_equal true, key.numbers.length == 5
  end

end




# the keys are created by generating a random five digit number, like 02715, and splitting it up like so:
#
# A key: first two digits (02)
# B key: second and third digits (27)
# C key: third and fourth digits (71)
# D key: fourth and fifth digits (15)
