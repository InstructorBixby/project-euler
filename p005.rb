# Smallest positive number evenly divisible by all of 1..20

n = 20
loop do
  ok = true
  (1..20).each do |d|
    if n % d != 0
      ok = false
      break
    end
  end
  break if ok
  n += 20
end

puts n
