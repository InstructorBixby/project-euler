# Sum of the diagonals of a 1001x1001 number spiral.
# each ring of side 2k+1 has corners 4k^2 - 2k + 1 up to 4k^2 + 4k + 1.

total = 1
(1..500).each do |k|
  side = 2 * k + 1
  corner = side * side
  4.times { |i| total += corner - i * 2 * k }
end

puts total
