# Champernowne's constant, product of a handful of digits
#
# build enough of the string to reach the millionth digit. not elegant
# but it is 200k numbers and finishes instantly.

s = ''
n = 1
while s.length < 1_000_000
  s += n.to_s
  n += 1
end

prod = 1
[1, 10, 100, 1000, 10_000, 100_000, 1_000_000].each do |i|
  prod *= s[i - 1].to_i
end

puts prod
