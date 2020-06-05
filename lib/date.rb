require 'date'
require 'pry'

date = DateTime.now
p date.strftime("%m/%d/%y").delete!("/")
