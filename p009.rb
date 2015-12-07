# Pythagorean triplet where a + b + c = 1000
# a < b < c so a only has to go up to 333

answer = nil
(1..333).each do |a|
  (a + 1..999).each do |b|
    c = 1000 - a - b
    next if c <= b
    if a * a + b * b == c * c
      answer = a * b * c
    end
  end
end

puts answer
