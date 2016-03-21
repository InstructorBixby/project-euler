# Sum of all amicable numbers under 10000
$LOAD_PATH.unshift File.expand_path('lib', File.dirname(__FILE__))
require 'euler'

def d(n)
  Euler.divisors(n).reject { |x| x == n }.inject(0) { |a, b| a + b }
end

sums = {}
(1...10000).each { |n| sums[n] = d(n) }

total = 0
(1...10000).each do |a|
  b = sums[a]
  next if b == a
  next if b < 1 || b >= 10000
  total += a if sums[b] == a
end

puts total
