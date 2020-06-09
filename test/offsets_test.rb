require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/offsets'
require './lib/key'
require 'pry'

class OffsetsTest < Minitest::Test

  def test_it_exists
    offset = Offset.new
  end

  def test_it_returns_offsets
    skip
    offset = Offset.new
    assert_equal offsets, offset.determine_offsets
  end

end
