abort "Error: Provide a filename and string as argument" if ARGV.length < 2
file = ARGV.first
string = ARGV[1]

lines = IO.readlines file
lines.each_with_index do |l, index|
  puts "#{index + 1} : #{l}" if l.include? string
end
