# Names scores. needs names.txt from the problem page, which is one
# line of "NAME","NAME",... in no particular order.

path = File.join(File.dirname(__FILE__), 'data', 'names.txt')
names = File.read(path).split(',').map { |n| n.gsub('"', '').strip }
names.sort!

total = 0
names.each_with_index do |name, i|
  value = name.split('').map { |c| c.ord - 64 }.inject(:+)
  total += value * (i + 1)
end

puts total
