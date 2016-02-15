# Sum of the digits of 2**1000

puts (2 ** 1000).to_s.split('').map { |c| c.to_i }.inject(:+)
