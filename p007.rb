# 10001st prime
$LOAD_PATH.unshift File.expand_path('lib', File.dirname(__FILE__))
require 'euler'

count = 0
n = 1
while count < 10001
  n += 1
  count += 1 if Euler.prime?(n)
end

puts n
