secret = 42
name = 'dt'
puts('please enter a number')
guess = gets.chomp.to_i

# puts('your guess is ' + guess.to_s)
puts "your name is #{ name } guess is #{ guess }" # interpolation # templating in js

# if (guess.to_i == secret)
#   puts('blah')
# else
#   puts('yes you fail life')
# end

while (guess != secret)

  if guess > secret
    puts 'guess lower'
  else
    puts 'guess higher'
  end

  guess = gets.chomp.to_i
end