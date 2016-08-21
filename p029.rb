# How many distinct values of a**b for 2 <= a,b <= 100
# just shove them in a Set, the bignums are exact so no rounding worry

require 'set'

seen = Set.new
(2..100).each do |a|
  (2..100).each do |b|
    seen << a ** b
  end
end

puts seen.size
