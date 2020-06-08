require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/enigma'
require './lib/shift'
require './lib/key'
require './lib/date'
require 'pry'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new("hello world")
    binding.pry
    assert_instance_of Enigma, enigma
  end

end
