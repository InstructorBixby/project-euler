# runs every solution and prints how long each one took. the expected
# answers are in answers.txt, two columns.

expected = {}
File.readlines(File.join(File.dirname(__FILE__), 'answers.txt')).each do |line|
  next if line.strip.empty?
  num, ans = line.split
  expected[num] = ans
end

Dir[File.join(File.dirname(__FILE__), 'p*.rb')].sort.each do |file|
  num = File.basename(file, '.rb').sub('p', '')
  t0 = Time.now
  got = `ruby #{file}`.strip
  dt = Time.now - t0
  want = expected[num]
  status = want.nil? ? '?' : (got == want ? 'ok' : 'FAIL')
  printf("%-6s %-14s %-6s %.1fs\n", num, got, status, dt)
end
