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
    a = @numbers.split('').map do |number|
      number.to_i
    end
      a[0..1].join.to_i
  end

  def b_key
    b = @numbers.split('').map do |number|
      number.to_i
    end
      b[1..2].join.to_i
  end

  def c_key
    c = @numbers.split('').map do |number|
      number.to_i
    end
      c[2..3].join.to_i
  end

  def d_key
    d = @numbers.split('').map do |number|
      number.to_i
    end
      d[3..4].join.to_i
  end

  def all_keys
    keys = {:a => a_key,
            :b => b_key,
            :c => c_key,
            :d => d_key
          }
  end

  key1 = Key.new
  binding.pry


end
