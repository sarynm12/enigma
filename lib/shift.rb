require './lib/key'
require './lib/date'
require 'date'
require 'pry'

class Shift
  attr_reader :alphabet, :keys, :offsets, :final_shifts

  def initialize
    @alphabet = ("a".."z").to_a << " "
    @keys = Key.new.all_keys

    full_date = DateTime.now.strftime("%m/%d/%y").delete!("/").to_i
    date_squared = full_date ** 2
    date = date_squared.to_s[-4..-1]

    a = date.split('').map do |date|
      date.to_i
    end
    a_offset = a[0..1].join.to_i

    b = date.split('').map do |date|
      date.to_i
    end
    b_offset = b[1..2].join.to_i

    c = date.split('').map do |date|
      date.to_i
    end
    c_offset = c[2..3].join.to_i

    d = date.split('').map do |date|
      date.to_i
    end
    d_offset = d[3..4].join.to_i

    @offsets = {:a => a_offset,
            :b => b_offset,
            :c => c_offset,
            :d => d_offset
          }

    @final_shifts = {"A" => keys[:a] + offsets[:a],
              "B" =>  keys[:b] + offsets[:b],
              "C" =>  keys[:c] + offsets[:c],
              "D" =>  keys[:d] + offsets[:d]
            }


  end

  def rotate(letter)
    rotated = Hash.new
    @alphabet.rotate(@final_shifts[letter]).each_with_index do |letter, index|
      rotated[letter] = index
    end
    rotated.invert
    end
  end

  def alphabet_hash
    alphabet_index = Hash.new
    @alphabet.each_with_index do |letter, index|
      alphabet_index[letter] = index
    end
    alphabet_index
  end

  # def change(incoming_message)
  #   message = incoming_message.downcase.split(//)
  #   changed_message = []
  #   letter_number = 0
  #   message.each do |letter|
  #     if letter_number == 0 || letter_number % 4 == 0
  #       changed_message << rotate("A")[alphabet_hash[letter]]
  #     elsif letter_number == 1 || letter_number % 4 == 1
  #       changed_message << rotate("B")[alphabet_hash[letter]]
  #     elsif letter_number == 2 || letter_number % 4 == 2
  #       changed_message << rotate("C")[alphabet_hash[letter]]
  #     elsif letter_number == 3 || letter_number % 4 == 3
  #       changed_message << rotate("D")[alphabet_hash[letter]]
  #     else
  #       changed_message << letter
  #     end
  #     changed_message.join
  #   end
