# Longest Collatz chain for a starting number under one million
#
# every chain ends up walking over numbers we already did, so keep a
# cache. only cache below the limit or the hash gets enormous.

LIMIT = 1_000_000
cache = Array.new(LIMIT, 0)
cache[1] = 1

def length_of(n, cache, limit)
  return cache[n] if n < limit && cache[n] > 0
  nxt = n % 2 == 0 ? n / 2 : 3 * n + 1
  l = 1 + length_of(nxt, cache, limit)
  cache[n] = l if n < limit
  l
end

best = 0
best_n = 0
(1...LIMIT).each do |n|
  l = length_of(n, cache, LIMIT)
  if l > best
    best = l
    best_n = n
  end
end

puts best_n
