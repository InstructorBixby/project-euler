# Sum square difference for 1..100

nums = (1..100).to_a
sum_of_squares = nums.map { |n| n * n }.inject(:+)
square_of_sum = nums.inject(:+) ** 2

puts square_of_sum - sum_of_squares
