# ARGV just an array of things type after ruby loc.rb

# puts "ARGV is: "
# p(ARGV) # programmers puts


# puts ARGV[0]
# filename = gets.chomp

file = IO.read(ARGV[0])

loc = file.split("\n").length

puts(loc)