project euler
=============

solutions in ruby. one file per problem, run with `ruby p001.rb`.

| # | problem | answer | notes |
|---|---------|--------|-------|
| 1 | Multiples of 3 and 5 | 233168 |  |
| 2 | Even Fibonacci numbers | 4613732 |  |
| 3 | Largest prime factor | 6857 |  |
| 4 | Largest palindrome product | 906609 |  |
| 5 | Smallest multiple | 232792560 | lcm |
| 6 | Sum square difference | 25164150 |  |
| 7 | 10001st prime | 104743 |  |
| 8 | Largest product in a series | 23514624000 |  |
| 9 | Special Pythagorean triplet | 31875000 |  |
| 10 | Summation of primes | 142913828922 | sieve |
| 11 | Largest product in a grid | 70600674 |  |
| 12 | Highly divisible triangular number | 76576500 |  |
| 13 | Large sum | 5537376230 | bignum, no work needed |
| 14 | Longest Collatz sequence | 837799 | memoised |
| 15 | Lattice paths | 137846528820 | binomial |
| 16 | Power digit sum | 1366 |  |
| 17 | Number letter counts | 21124 |  |
| 18 | Maximum path sum I | 1074 | bottom up |
| 19 | Counting Sundays | 171 |  |
| 20 | Factorial digit sum | 648 |  |
| 21 | Amicable numbers | 31626 |  |
| 22 | Names scores | 871198282 | needs names.txt |
| 23 | Non-abundant sums | 4179871 | slow, ~20s |
| 24 | Lexicographic permutations | 2783915460 |  |
| 25 | 1000-digit Fibonacci number | 4782 |  |


the big input files (names.txt, words.txt) are not in here, grab them
off the problem page and drop them in data/

`ruby run_all.rb` runs everything and checks against answers.txt.
problem 23 takes about 19 seconds, everything else is under a second.
