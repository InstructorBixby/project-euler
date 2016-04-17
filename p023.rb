# Sum of all numbers which cannot be written as the sum of two
# abundant numbers. everything above 28123 can be, so thats the limit.
$LOAD_PATH.unshift File.expand_path('lib', File.dirname(__FILE__))
require 'euler'

LIMIT = 28123

abundant = []
(12..LIMIT).each do |n|
  s = Euler.divisors(n).reject { |x| x == n }.inject(0) { |a, b| a + b }
  abundant << n if s > n
end

can = Array.new(LIMIT + 1, false)
abundant.each do |a|
  abundant.each do |b|
    break if a + b > LIMIT
    can[a + b] = true
  end
end

total = 0
(1..LIMIT).each { |n| total += n unless can[n] }
puts total
