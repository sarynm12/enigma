class Key
  attr_reader :numbers

  def initialize
    @numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def randomize
    key = 5.times.map{rand(5)}.join
    p key 
  end

  r = Key.new
  r.randomize
  # random = Key.new
  # p random.numbers

end


# numbers.sample(5)
#
#
#
# 10.times.map{rand(10)}.join # => "3401487670"
