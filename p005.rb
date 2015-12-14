# Smallest positive number evenly divisible by all of 1..20
#
# the brute force version took about 8 seconds. the answer is just the
# least common multiple of 1..20 and ruby has lcm built in, so:

puts (1..20).inject(1) { |a, b| a.lcm(b) }
