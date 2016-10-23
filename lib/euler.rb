# helpers i keep rewriting

module Euler
  def self.prime?(n)
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

  # sieve of eratosthenes. only tracks odd numbers, so the array is
  # half the size and problem 10 stopped hitting swap on the laptop.
  def self.primes_below(limit)
    return [] if limit < 3
    half = limit / 2
    sieve = Array.new(half, true)
    sieve[0] = false          # index i stands for 2i+1, so 1
    i = 1
    while (2 * i + 1) * (2 * i + 1) < limit
      if sieve[i]
        n = 2 * i + 1
        j = (n * n - 1) / 2
        while j < half
          sieve[j] = false
          j += n
        end
      end
      i += 1
    end
    out = [2]
    sieve.each_with_index { |is_p, idx| out << 2 * idx + 1 if is_p }
    out
  end

  def self.divisors(n)
    out = []
    i = 1
    while i * i <= n
      if n % i == 0
        out << i
        out << n / i unless i == n / i
      end
      i += 1
    end
    out.sort
  end
end
