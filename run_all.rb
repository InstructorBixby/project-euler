# runs every solution and prints how long each one took. the expected
# answers are in answers.txt, two columns.
#
# SKIP=23,27 ruby run_all.rb  to leave out the slow ones

skip = (ENV['SKIP'] || '').split(',')

expected = {}
File.readlines(File.join(File.dirname(__FILE__), 'answers.txt')).each do |line|
  next if line.strip.empty?
  num, ans = line.split
  expected[num] = ans
end

failed = 0
Dir[File.join(File.dirname(__FILE__), 'p*.rb')].sort.each do |file|
  num = File.basename(file, '.rb').sub('p', '')
  next if skip.include?(num) || skip.include?(num.to_i.to_s)
  t0 = Time.now
  got = `ruby #{file}`.strip
  dt = Time.now - t0
  want = expected[num]
  status = want.nil? ? '?' : (got == want ? 'ok' : 'FAIL')
  failed += 1 if status == 'FAIL'
  printf("%-6s %-14s %-6s %.1fs\n", num, got, status, dt)
end

exit(1) if failed > 0
