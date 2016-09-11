# Circular primes below one million
$LOAD_PATH.unshift File.expand_path('lib', File.dirname(__FILE__))
require 'euler'
require 'set'

primes = Set.new(Euler.primes_below(1_000_000))

def rotations(n)
  s = n.to_s
  (0...s.length).map { |i| (s[i..-1] + s[0, i]).to_i }
end

count = 0
primes.each do |p|
  count += 1 if rotations(p).all? { |r| primes.include?(r) }
end

puts count
