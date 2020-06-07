require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/date'
require 'pry'

class DateTimeTest < Minitest::Test

  def test_it_exists
    date = DateTime.now
    assert_instance_of DateTime, date
  end

  def test_it_strips_off_time
    # full_date = DateTime.now.strftime("%m/%d/%y").delete!("/").to_i
    # date_squared = full_date ** 2
    # date = date_squared.to_s[-4..-1]
    #
    # a = date.split('').map do |date|
    #   date.to_i
    # end
    # a_offset = a[0..1].join.to_i

    assert_equal 84, a_offset
  end

end




# the offsets are found using the date of transmission.
#
# Consider the date formatted as a number, DDMMYY. If the date is August 4, 1995, it would be represented as 040895.
# Square the numeric form (1672401025)
# Take the last four digits (1025)
# A offset: The first digit (1)
# B offset: The second digit (0)
# C offset: The third digit (2)
# D offset: The fourth digit (5)
