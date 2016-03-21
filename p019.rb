# How many Sundays fell on the first of the month in the 20th century.
# ruby has Date so there is no reason to do the day-of-week maths.

require 'date'

count = 0
(1901..2000).each do |y|
  (1..12).each do |m|
    count += 1 if Date.new(y, m, 1).wday == 0
  end
end

puts count
