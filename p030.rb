# Numbers that are the sum of the fifth powers of their digits.
# 6 digits of 9**5 is 354294 which is still 6 digits, 7 digits is not,
# so the search stops at 999999.

POW = (0..9).map { |d| d ** 5 }

total = 0
(10..999_999).each do |n|
  s = 0
  m = n
  while m > 0
    s += POW[m % 10]
    m = m / 10
  end
  total += n if s == n
end

puts total
