# Longest recurring cycle in 1/d for d < 1000
#
# do the long division by hand and remember which remainders you have
# seen. when a remainder repeats you are back at the start of the cycle.

def cycle_length(d)
  seen = {}
  r = 1
  pos = 0
  while r != 0
    return pos - seen[r] if seen.key?(r)
    seen[r] = pos
    r = (r * 10) % d
    pos += 1
  end
  0
end

best = 0
best_d = 0
(2...1000).each do |d|
  l = cycle_length(d)
  if l > best
    best = l
    best_d = d
  end
end

puts best_d
