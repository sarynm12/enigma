class Key
  attr_reader :numbers

  def initialize
    @numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def generate
    key = 5.times.map{rand(5)}.join
    if key.length < 5
      printkey("%05d",key)
    else
      key
    end
    p key
  end

  # def count
  #   @key.count
  # end


  key1 = Key.new
  key1.generate

end
