# How many ways to make 200p out of english coins.
# this is the coin change counting dp. one row, iterate the coins on
# the outside, and the combinations dont get double counted.

COINS = [1, 2, 5, 10, 20, 50, 100, 200]
TARGET = 200

ways = Array.new(TARGET + 1, 0)
ways[0] = 1

COINS.each do |c|
  (c..TARGET).each do |n|
    ways[n] += ways[n - c]
  end
end

puts ways[TARGET]
