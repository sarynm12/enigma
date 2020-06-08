require './lib/key'
require './lib/date'
require 'date'
require 'pry'

class Encrypt
  attr_reader :alphabet, :offsets, :keys, :final_shifts

  handle = File.open(ARGV[0], "r")
  incoming_message = handle.read
  handle.close


end



  # e = [1, 2, 3].map
  # e.each_with_index { |n, i| n * i }
  # => [0, 2, 6]
  #
  # e = [1, 2, 3].map.with_index { |n, i| n * i }
  # => [0, 2, 6]
