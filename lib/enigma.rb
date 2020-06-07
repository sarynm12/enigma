require './lib/key'
require './lib/date'
require 'date'

class Enigma
  #attr_reader :message, :key, :date

  def encrypt()
    encrypt = {:message => "string",
                :key => "key",
                :date => "date"
              }
  end

end



# The encrypt method takes a message String as an argument. It can optionally take a Key and Date as arguments to use for encryption. If the key is not included, generate a random key. If the date is not included, use today’s date.
#
# The encrypt method returns a hash with three keys:
#
# :encryption => the encrypted String
# :key => the key used for encryption as a String
# :date => the date used for encryption as a String in the form DDMMYY
