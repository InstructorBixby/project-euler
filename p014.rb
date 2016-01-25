# Longest Collatz chain for a starting number under one million

def chain_length(n)
  len = 1
  while n != 1
    n = n % 2 == 0 ? n / 2 : 3 * n + 1
    len += 1
  end
  len
end

best = 0
best_n = 0
(1...1_000_000).each do |n|
  l = chain_length(n)
  if l > best
    best = l
    best_n = n
  end
end

puts best_n
