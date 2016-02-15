# Sum of the digits of 100!

fact = (1..100).inject(1) { |a, b| a * b }
puts fact.to_s.split('').map { |c| c.to_i }.inject(:+)
