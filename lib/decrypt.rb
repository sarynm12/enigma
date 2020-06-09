require './lib/enigma'
require 'date'
require 'pry'

  handle = File.open(ARGV[0], "r")
  incoming_message = handle.read
  handle.close
