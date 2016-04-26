# First Fibonacci term with 1000 digits

a = 1
b = 1
n = 2
while b.to_s.length < 1000
  a, b = b, a + b
  n += 1
end

puts n
