# Even Fibonacci numbers
# sum the even fib terms that dont exceed 4 million

a = 1
b = 2
total = 0
while b <= 4_000_000
  total += b if b % 2 == 0
  a, b = b, a + b
end

puts total
