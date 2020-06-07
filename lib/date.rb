require 'date'
require 'pry'

class DateTime

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

      offsets = {:a => a_offset,
              :b => b_offset,
              :c => c_offset,
              :d => d_offset
            }

end
