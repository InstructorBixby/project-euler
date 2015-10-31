# Largest product of thirteen adjacent digits in the 1000-digit number
$LOAD_PATH.unshift File.expand_path('lib', File.dirname(__FILE__))

digits = File.read(File.join(File.dirname(__FILE__), 'data', 'p008.txt'))
digits = digits.gsub(/\s/, '').split('').map { |c| c.to_i }

best = 0
(0..(digits.length - 13)).each do |i|
  prod = 1
  digits[i, 13].each { |d| prod *= d }
  best = prod if prod > best
end

puts best
