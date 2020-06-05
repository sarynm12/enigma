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

  def split

  end


  key1 = Key.new


end

# def generate
#   key = 5.times.map{rand(5)}.join
#   if key.length < 5
#     printkey("%05d",key)
#   else
#     key
#   end
#    key
# end
