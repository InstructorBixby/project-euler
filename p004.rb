# Largest palindrome made from the product of two 3-digit numbers

def palindrome?(n)
  s = n.to_s
  s == s.reverse
end

best = 0
(100..999).each do |a|
  (a..999).each do |b|
    p = a * b
    best = p if p > best && palindrome?(p)
  end
end

puts best
