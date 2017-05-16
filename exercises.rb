#### Exercise 0 ####
fav_colours = ["blue", "gray", "black", "purple", "white"]
ages = [36, 31, 26, 34, 14]
coin_heads = [true, false, false, true, false]
performing_artists = ["eminem", "the killers", "oasis"]
fav_colours_sym = [:blue, :gray, :black, :purple, :white]


words = {big: "of considerable size, extent, or intensity.",
  small: "of a size that is less than normal or usual.",
  medium: "about halfway between two extremes"}
movies = {'anchorman': 2004, gladiator: 2000, 'good will hunting': 1997}
cities = {'vancouver': 2135201, 'montreal': 4098927, 'toronto': 5132794}
siblings = {'michael': 14, 'rebecca': 31, 'david': 34, 'ben': 35}
#
# key: value
# 'key' => value
# :key => value
# 'key': value
# :'good will hunting' => value

#### Exercise 1 ####
puts coin_heads
puts fav_colours[0]
puts ages.sort
ages << 0
puts movies[:'anchorman']

#### Exercise 2 ####
puts fav_colours[fav_colours.length-1]
cities[:'london'] = 9787426
puts coin_heads.reverse
puts cities[:'vancouver']

performing_artists.each do |artist|
  puts "I think #{artist} is a phenomenal performer"
end

#### Exercise 3 ####
puts performing_artists[0],performing_artists[1]

movies.each do |movie, year|
  puts "#{movie} came out in #{year}."
end

puts ages.sort.reverse

movies[:'beaty and the beast'] = 1991, 2017
#check that it worked:
puts movies

#### Exercise 4 ####
ages.each do |age|
  if age < 30
    puts age
  end
end

puts ages.sort.last

counter = 0
coin_heads.each do |head|
  if head == true
    counter += 1
  end
end
puts "Heads was flipped #{counter} times"

#Remove eminimem (first artist in array)
performing_artists.shift
puts performing_artists

#change vancouver population to 3M
cities[:vancouver] = 3000000


#### Exercise 5 ####
#find total population of all cities in the cities hash
tot_population = 0
cities.each do |city, population|
  tot_population = tot_population + population
end
puts tot_population

siblings.each do |name, age|
  if age > 30
    puts "#{name} is old"
  elsif
    puts "#{name} is young"
  end
end

#print last two colours of color array
puts fav_colours_sym[fav_colours_sym.length - 2], fav_colours_sym[fav_colours_sym.length - 1]

ages.each do |age|
  age += 1
  puts "Age plus one is #{age}"
end
puts ages

# Using map
# new_ages = ages.map do |age|
#   age += 1
# end
# puts new_ages

# Add two new colours to array of favourite colours.
fav_colours_sym.push(:crimson, :salmon)
puts fav_colours_sym


#### Exercise 6 ####
#
# Make a new hash that contains a list of movies for each year. Each list of movies should be an array.
movies_year = {
  '1999' => ["the matrix", "fight club", "american beauty"],
  '2004' => ["the incredibles", "mean girls", "collateral"],
  '2009' => ["avatar", "watchmen", "coraline"]
}

# Make a new array that contains each row of the buttons on a phone. Each row should be an array.
phone_buttons = [['1','2','3'],['4','5','6'],['7','8','9'],['*','0','#']]

# Make a new array that contains information about three countries.
#Each country should be a hash that has a name, a continent, and whether or not it is an island.
countries = [
  {name: 'canada', continent: 'north america', island: false},
  {name: 'UK', continent: 'europe', island: true},
  {name: 'south africa', continent: 'africa', island: false}
]

# Output the message "I will not skateboard in the halls" 20 times.
20.times do
  puts "I will not skateboard in the halls"
end

# Create an array consisting of the above message. It should appear in the array 20 times.
text = []
20.times do
  text.push("I will not skateboard in the halls")
end

# Create an array consisting of the numbers between 1 and 50.
nums = []
50.times do |num|
  nums.push(num+1)
end

# Use an each loop to find the sum of the numbers in the above array.
sum = 0
(1..50).each do |row|
  # puts nums[num]
  sum = sum + nums[row-1]
end
puts sum

# Create a new array which has three of each number up to 50.
# Ie. [1, 1, 1, 2, 2, 2, 3, 3, 3, ... , 50, 50, 50] and so on, up to 50.
one_to_fifty = []
50.times do |num|
  3.times do
    one_to_fifty.push(num+1)
  end
end
puts one_to_fifty

# Make a new array out all of the countries from the hash in Exercise 6 that are not islands.
#Print out both arrays.

not_islands = []

countries.each do |value|
  if value[:island] == false
    not_islands.push(value[:name])
  end
end
puts not_islands
