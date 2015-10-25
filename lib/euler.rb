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

  # sieve of eratosthenes, returns an array of primes below limit
  def self.primes_below(limit)
    sieve = Array.new(limit, true)
    sieve[0] = false
    sieve[1] = false if limit > 1
    i = 2
    while i * i < limit
      if sieve[i]
        j = i * i
        while j < limit
          sieve[j] = false
          j += i
        end
      end
      i += 1
    end
    out = []
    sieve.each_with_index { |is_p, idx| out << idx if is_p }
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
