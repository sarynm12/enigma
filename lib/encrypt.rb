require './lib/key'
require './lib/date'
require 'date'
require 'pry'

class Encrypt
  attr_reader :letters, :offsets, :keys, :final_shifts

  def initialize
    @letters = ("a".."z").to_a << " "
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

    @final_shifts = {:a => keys[:a] + offsets[:a],
              :b =>  keys[:b] + offsets[:b],
              :c =>  keys[:c] + offsets[:c],
              :d =>  keys[:d] + offsets[:d]
            }

  end

end


  # e = [1, 2, 3].map
  # e.each_with_index { |n, i| n * i }
  # => [0, 2, 6]
  #
  # e = [1, 2, 3].map.with_index { |n, i| n * i }
  # => [0, 2, 6]
