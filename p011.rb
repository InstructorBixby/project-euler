# Largest product of four adjacent numbers in a 20x20 grid,
# horizontally, vertically or diagonally

grid = File.readlines(File.join(File.dirname(__FILE__), 'data', 'p011.txt'))
grid = grid.map { |line| line.split.map { |n| n.to_i } }

best = 0
n = grid.length
dirs = [[0, 1], [1, 0], [1, 1], [1, -1]]

(0...n).each do |r|
  (0...n).each do |c|
    dirs.each do |dr, dc|
      er = r + dr * 3
      ec = c + dc * 3
      next if er < 0 || er >= n || ec < 0 || ec >= n
      prod = 1
      4.times { |k| prod *= grid[r + dr * k][c + dc * k] }
      best = prod if prod > best
    end
  end
end

puts best
