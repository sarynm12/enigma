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

  key1 = Key.new


  def split #A key
    key.numbers.split('').map do |number|
      number.to_i
    end 
      binding.pry
  end



  #def B key
  #def c key
  #def d key





end
