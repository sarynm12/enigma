require 'date'
require 'pry'

  full_date = DateTime.now
  date = full_date.strftime("%m/%d/%y").delete!("/")
  p date

  def a_offset
    a_array = date.split('').map do |date|
      date.to_i
    end
      a_array[0..1].join.to_i
      a_array
  end

  def b_offset
    b_array = date.split('').map do |date|
      date.to_i
    end
      b_array[1..2].join.to_i
      b_array
  end

  def c_offset
    c_array = date.split('').map do |date|
      date.to_i
    end
      c_array[2..3].join.to_i
      c_array
  end

  def d_offset
    d_array = date.split('').map do |date|
      date.to_i
    end
      d_array[3..4].join.to_i
      d_array
  end
