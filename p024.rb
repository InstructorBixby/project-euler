# Millionth lexicographic permutation of 0123456789
#
# Array#permutation gives them in lexicographic order already if the
# input is sorted, but making a million arrays is wasteful. work out
# each digit from how many permutations the rest of them have.

def factorial(n)
  (1..n).inject(1) { |a, b| a * b }
end

digits = (0..9).to_a
remaining = 1_000_000 - 1
out = ''

while digits.length > 0
  f = factorial(digits.length - 1)
  i = remaining / f
  remaining = remaining % f
  out += digits.delete_at(i).to_s
end

puts out
