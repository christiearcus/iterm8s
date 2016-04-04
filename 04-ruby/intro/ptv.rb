require 'pry'

line = %w{richmond yarra flinders winsor}

# line2 = %w{prahran richmond flagstaff}

# symbol

# lines = {
#   sandy: ['richmond', 'yarra', 'flinders', 'winsor'],
#   alystair: ['prahran', 'richmond', 'flagstaff']
# }

print 'station you get on: '
station_on = gets.chomp

print "station you want to get off: "
station_off = gets.chomp

station_on_index = stations.index(station_on) # 1
station_off_index = stations.index(station_off) # 3


if (station_on_index > station_off_index)
  journey = stations.slice(station_off_index..station_on_index).reverse
else
  journey = stations.slice(station_on_index..station_off_index)
end

# print out stations of journey one line at a time

puts 'your journey is: '

journey.each do |station|
  puts station
end

# count = 0

# loop do
#   puts journey[count] # journey[0]
#   count += 1 # 1

#   if count == journey.length # 1 == 3 
#     break
#   end

    # break if count == journey.length
# end




