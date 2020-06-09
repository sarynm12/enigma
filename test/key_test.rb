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
    binding.pry
    assert_equal true, key.numbers.length == 5
  end

  def test_a_key
    key1 = mock
    key1.stubs(:a_key).returns(13)
  end

  def test_b_key
    key1 = mock
    key1.stubs(:b_key).returns(32)
  end

  def test_c_key
    key1 = mock
    key1.stubs(:c_key).returns(20)
  end

  def test_d_key
    key1 = mock
    key1.stubs(:d_key).returns(01)
  end

  def test_all_keys
    key1 = mock
    key1.stubs(:all_keys).returns({:a => 13,
                                  :b => 32,
                                  :c => 20,
                                  :d => 01
                                  })
  end

end
