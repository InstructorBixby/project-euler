# Numbers equal to the sum of the factorials of their digits.
# 7 * 9! is 2540160 so nothing above that works.

FACT = (0..9).map { |d| (1..d).inject(1) { |a, b| a * b } }

total = 0
(10..2_540_160).each do |n|
  s = 0
  m = n
  while m > 0
    s += FACT[m % 10]
    m = m / 10
  end
  total += n if s == n
end

puts total
