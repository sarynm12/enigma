numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
numbers.sample(5)

numbers = (0..9)

10.times.map{rand(10)}.join # => "3401487670"
