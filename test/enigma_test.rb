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
    assert_instance_of Enigma, enigma
  end

  def test_it_has_an_alphabet
    enigma = Enigma.new("hello world")
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, enigma.alphabet
  end

  def test_it_returns_5_letter_key
    enigma = Enigma.new("hello world")
    assert_equal 5, enigma.encrypt[:key].length
  end

  def test_it_returns_date_in_correct_format
    enigma = Enigma.new("hello world")
    assert_equal "060920", enigma.full_date
  end

  def test_it_returns_all_downcased_characters
    enigma = Enigma.new("HELLO WORLD")
    assert_equal "hello world", enigma.incoming_message
  end

  def test_it_returns_hash_with_correct_keys
    enigma = Enigma.new("hello world")
    assert_equal [:message, :key, :date], enigma.encrypt.keys
  end

  def test_it_returns_an_encryped_message
    enigma = mock("hellow world")
    enigma.stubs(:message).returns("gdkknzvnqkc")
  end

end
