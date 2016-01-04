# First ten digits of the sum of fifty 50-digit numbers.
# in a lot of languages this is a whole thing. in ruby the integers
# just get bigger.

nums = File.readlines(File.join(File.dirname(__FILE__), 'data', 'p013.txt'))
total = nums.map { |l| l.strip.to_i }.inject(0) { |a, b| a + b }

puts total.to_s[0, 10]
