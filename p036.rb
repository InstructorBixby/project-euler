# Sum of all numbers below a million that are palindromic in base 10
# and base 2

def pal?(s)
  s == s.reverse
end

total = 0
(1...1_000_000).each do |n|
  total += n if pal?(n.to_s) && pal?(n.to_s(2))
end

puts total
