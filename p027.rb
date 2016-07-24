# Quadratic primes: n*n + a*n + b, maximise the run of primes from n=0
$LOAD_PATH.unshift File.expand_path('lib', File.dirname(__FILE__))
require 'euler'

best = 0
best_prod = 0

(-999..999).each do |a|
  (-1000..1000).each do |b|
    n = 0
    while Euler.prime?(n * n + a * n + b)
      n += 1
    end
    if n > best
      best = n
      best_prod = a * b
    end
  end
end

puts best_prod
