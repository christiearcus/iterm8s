require 'pry'

a = ['anil', 'erik', 'jonathon']

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

is = {true => "It's true!", false => "It's false", 0 => 'sdfsdf'}


users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  }
}

binding.pry

new_array = []

users['Erik'][:favorite_numbers].each do |number|

  if number.even?
    new_array.push(number)
  end

end


users['Erik'][:favorite_numbers].select do |number|

  number > 10

end


