# Sum of all products whose multiplicand/multiplier/product can be
# written as a 1 through 9 pandigital.
#
# TODO the bounds. a*b has to come out at 4 digits for the whole thing
# to be 9 digits, so either 1 digit * 4 digits or 2 * 3. i think.

def pandigital?(s)
  s.length == 9 && s.split('').sort.join == '123456789'
end

require 'set'
products = Set.new

(1..9999).each do |a|
  (a..9999).each do |b|
    p = a * b
    break if p > 9999
    products << p if pandigital?("#{a}#{b}#{p}")
  end
end

puts products.inject(0) { |s, x| s + x }
