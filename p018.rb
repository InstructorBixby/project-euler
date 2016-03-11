# Maximum path sum from the top of the triangle to the bottom.
#
# i wrote a recursive version that walked all 2**14 paths and it worked
# but the note says problem 67 has 100 rows and brute force wont do it.
# so: start at the second to last row and replace each number with
# itself plus the better of the two below it. the top ends up being the
# answer.

rows = File.readlines(File.join(File.dirname(__FILE__), 'data', 'p018.txt'))
tri = rows.map { |l| l.split.map { |n| n.to_i } }

(tri.length - 2).downto(0) do |r|
  (0..r).each do |c|
    below = tri[r + 1][c] > tri[r + 1][c + 1] ? tri[r + 1][c] : tri[r + 1][c + 1]
    tri[r][c] += below
  end
end

puts tri[0][0]
