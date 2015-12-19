# First triangle number with more than 500 divisors
$LOAD_PATH.unshift File.expand_path('lib', File.dirname(__FILE__))
require 'euler'

n = 1
tri = 1
while Euler.divisors(tri).length <= 500
  n += 1
  tri += n
end

puts tri
