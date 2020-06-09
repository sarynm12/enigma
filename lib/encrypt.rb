require './lib/enigma'
require 'date'
require 'pry'

  handle = File.open(ARGV[0], "r")
  incoming_message = handle.read
  handle.close

  enigma = Enigma.new(incoming_message)
  encrypted_text = enigma.encrypt

  writer = File.open(ARGV[1], "w")
  writer.write(encrypted_text[:message])

  writer.close

  puts "Created #{ARGV[1]} with the key #{encrypted_text[:key]} and date #{encrypted_text[:date]}"
