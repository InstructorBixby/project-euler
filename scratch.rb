# working out the bounds for 32 on paper was not happening so i just
# printed the digit counts
(1..9999).each do |a|
  (a..9999).each do |b|
    p = a * b
    next if p > 9999
    total = a.to_s.length + b.to_s.length + p.to_s.length
    puts "#{a} #{b} #{p} #{total}" if total == 9
  end
end
