require 'simplecov'
Simplecov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/date'
require 'pry'




# the offsets are found using the date of transmission.
#
# Consider the date formatted as a number, DDMMYY. If the date is August 4, 1995, it would be represented as 040895.
# Square the numeric form (1672401025)
# Take the last four digits (1025)
# A offset: The first digit (1)
# B offset: The second digit (0)
# C offset: The third digit (2)
# D offset: The fourth digit (5)
