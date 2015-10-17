# 10001st prime

def prime?(n)
  return false if n < 2
  return true if n == 2
  return false if n % 2 == 0
  i = 3
  while i * i <= n
    return false if n % i == 0
    i += 2
  end
  true
end

count = 0
n = 1
while count < 10001
  n += 1
  count += 1 if prime?(n)
end

puts n
