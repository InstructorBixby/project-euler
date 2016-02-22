# Letters used writing out one to one thousand in words
# (no spaces or hyphens, "and" counts)

ONES = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven',
        'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen',
        'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen',
        'nineteen']
TENS = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty',
        'seventy', 'eighty', 'ninety']

def spell(n)
  return 'onethousand' if n == 1000
  out = ''
  if n >= 100
    out += ONES[n / 100] + 'hundred'
    n = n % 100
    out += 'and' if n > 0
  end
  if n >= 20
    out += TENS[n / 10]
    n = n % 10
  end
  out += ONES[n]
  out
end

puts (1..1000).map { |n| spell(n).length }.inject(:+)
