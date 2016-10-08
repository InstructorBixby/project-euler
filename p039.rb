# Perimeter p <= 1000 with the most right triangle solutions

counts = Array.new(1001, 0)
(1..1000).each do |a|
  (a..1000).each do |b|
    c2 = a * a + b * b
    c = Math.sqrt(c2).round
    next unless c * c == c2
    p = a + b + c
    counts[p] += 1 if p <= 1000
  end
end

best_p = 0
(1..1000).each { |p| best_p = p if counts[p] > counts[best_p] }
puts best_p
