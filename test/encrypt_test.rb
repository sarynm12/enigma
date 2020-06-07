require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'
require './lib/key'
require './lib/date'
require 'pry'

class EncryptTest < Minitest::Test

  def test_it_exists
    encrypt = Encrypt.new
    binding.pry
    assert_instance_of Encrypt, encrypt
  end


end
