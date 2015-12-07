# Sum of all primes below two million
$LOAD_PATH.unshift File.expand_path('lib', File.dirname(__FILE__))
require 'euler'

puts Euler.primes_below(2_000_000).inject(0) { |s, p| s + p }
