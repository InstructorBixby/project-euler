# Lattice paths across a 20x20 grid.
# you make 40 moves, 20 of them right, so its 40 choose 20.

def choose(n, k)
  num = 1
  den = 1
  (1..k).each do |i|
    num *= (n - k + i)
    den *= i
  end
  num / den
end

puts choose(40, 20)
