# Largest prime factor of 600851475143
#
# first attempt tried every number up to n which obviously never
# finished. you only have to divide out factors as you find them, then
# whatever is left at the end is the biggest one.

n = 600851475143
f = 2
largest = 1

while f * f <= n
  while n % f == 0
    n = n / f
    largest = f
  end
  f += 1
end

largest = n if n > 1
puts largest
