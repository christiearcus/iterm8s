
input = 'HEY'


def shouting?(input)
  input == input.upcase
end

def question?(input)
  input.end_with('?')
end

def statement?(input)
  !input.empty? && input == input.upcase
end

def alternate_case(input)
end

def replace_with_numbers(input)
  input.gsub(/[aeio]/, 'a' => 4, 'e' => 3, 'i' => 1, 'o' => 0)
end

def leet_speak?(input)
end

def to_leet_speak(input)
  alternate_case(replace_with_numbers(input))
end


if question?(input)
  puts 'sure'
elsif statement?(input)
  puts 'fine be that way'
elsif shouting?(input)
  puts 'chill out'
elsif leet_speak?(input)
  puts to_leet_speak(input)
else
  puts 'watever'
end



