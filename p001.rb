# Multiples of 3 and 5
# sum of all multiples of 3 or 5 below 1000

total = 0
(1...1000).each do |n|
  if n % 3 == 0 || n % 5 == 0
    total += n
  end
end

puts total
