# Usage: ruby grep.rb <regular_expression> <file_name>

IO.readlines(ARGV[1]).each_with_index{ |line, index| puts "#{index + 1}: #{line}" if line =~ /#{ARGV[0]}/}