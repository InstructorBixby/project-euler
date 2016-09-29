# Largest 1-9 pandigital formed as a concatenated product
#
# the first number has to be below 10000 or the concatenation runs
# past 9 digits straight away

def pandigital?(s)
  s.length == 9 && s.split('').sort.join == '123456789'
end

best = 0
(1..9999).each do |n|
  s = ''
  i = 1
  while s.length < 9
    s += (n * i).to_s
    i += 1
  end
  next unless pandigital?(s)
  v = s.to_i
  best = v if v > best
end

puts best
