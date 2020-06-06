require 'pry'

class Key
  attr_reader :numbers

  def initialize
    @numbers = 5.times.map{rand(5)}.join
    if @numbers.length < 5
      printnumbers("%05d",numbers)
    else
      @numbers
    end
    p @numbers
  end

  def a_key
    num_array = @numbers.split('').map do |number|
      number.to_i
    end
      num_array[0..1].join.to_i
      num_array
  end

  def b_key
    num_array = @numbers.split('').map do |number|
      number.to_i
    end
      num_array[1..2].join.to_i
      num_array
  end

  def c_key
    num_array = @numbers.split('').map do |number|
      number.to_i
    end
      num_array[2..3].join.to_i
      num_array
  end

  def d_key
    num_array = @numbers.split('').map do |number|
      number.to_i
    end
      num_array[3..4].join.to_i
      num_array
  end

key = mock


end
