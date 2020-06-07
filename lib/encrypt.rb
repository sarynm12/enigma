require './lib/key'
require './lib/date'
require 'date'
require 'pry'

class Encrypt
  attr_reader :letters, :date

  def initialize
    @letters = ("a".."z").to_a << " "
    full_date = DateTime.now
    @date = full_date.strftime("%m/%d/%y").delete!("/")
  end

  def find_shift
    all_keys
  end

end

  #here is where to add key and offset

  # e = [1, 2, 3].map
  # e.each_with_index { |n, i| n * i }
  # => [0, 2, 6]
  #
  # e = [1, 2, 3].map.with_index { |n, i| n * i }
  # => [0, 2, 6]
