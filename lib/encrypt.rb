require './lib/key'
require './lib/date'

class Encrypt
  attr_reader :letters

  def initialize
    letters = ("a".."z").to_a << " "
  end

  def find_shift

  end 

end

  #here is where to add key and offset

  # e = [1, 2, 3].map
  # e.each_with_index { |n, i| n * i }
  # => [0, 2, 6]
  #
  # e = [1, 2, 3].map.with_index { |n, i| n * i }
  # => [0, 2, 6]
