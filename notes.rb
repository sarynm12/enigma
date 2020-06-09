("a".."z").to_a << " "

https://github.com/danbriechle/Enigma
https://backend.turing.io/module1/lessons/project_etiquette
https://www.rubyguides.com/2015/12/ruby-time/
date = Date.today
to use the Date class you need to require 'date'.

cipher = CeasarCipher.new
cipher.encode("Hello World", 5)
=> "CZGGJ RJMGY"



["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]



rotate(count=1) → new_ary
Returns a new array by rotating self so that the element at count is the first element of the new array.

If count is negative then it rotates in the opposite direction, starting from the end of self where -1 is the last element.

a = [ "a", "b", "c", "d" ]
a.rotate         #=> ["b", "c", "d", "a"]
a                #=> ["a", "b", "c", "d"]
a.rotate(2)      #=> ["c", "d", "a", "b"]
a.rotate(-3)     #=> ["b", "c", "d", "a"]
rotate!(count=1) → ary
Rotates self in place so that the element at count comes first, and returns self.

If count is negative then it rotates in the opposite direction, starting from the end of the array where -1 is the last element.

a = [ "a", "b", "c", "d" ]
a.rotate!        #=> ["b", "c", "d", "a"]
a                #=> ["b", "c", "d", "a"]
a.rotate!(2)     #=> ["d", "a", "b", "c"]
a.rotate!(-3)    #=> ["a", "b", "c", "d"]



e = [1, 2, 3].map
e.each_with_index { |n, i| n * i }
=> [0, 2, 6]

e = [1, 2, 3].map.with_index { |n, i| n * i }
=> [0, 2, 6]
