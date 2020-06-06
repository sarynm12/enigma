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




  def split #A key
    num_array = @numbers.split('').map do |number|
      number.to_i
    end
      num_array[0..1].join.to_i
  end



  #def B key
  #def c key
  #def d key





end
