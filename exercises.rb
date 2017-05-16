############ EXERCISE 0 ############
#Create an array for each item below that contains the given information:
#
# your favourite colours
fav_colours = ["blue", "gray", "black", "purple", "white"]
# the age of you and your siblings/cousins/friends
ages = [36, 31, 26, 34, 14]
# flip a coin 5 times and record whether or not the result was 'heads'
coin_heads = [true, false, false, true, false]
# your three favourite performing artists
performing_artists = ["eminem", "the killers", "oasis"]
# your favourite colours again (this time as symbols instead of strings)
fav_colours_sym = [:blue, :gray, :black, :purple, :white]

# Create a hash for each item below that contains the given information:
#
# three words and their definitions
words = {big: "of considerable size, extent, or intensity.",
  small: "of a size that is less than normal or usual.",
  medium: "about halfway between two extremes"}
# your favourite movie names and their year of creation
movies = {'anchorman': 2004, 'gladiator': 2000, 'good will hunting': 1997}
# three cities of the world and their population
cities = {'vancouver': 2135201, 'montreal': 4098927, 'toronto': 5132794}
# the names of your siblings/cousins/friends and their ages
siblings = {'michael': 14, 'rebecca': 31, 'david': 34, 'ben': 35}


############ EXERCISE 1 ############
#
# Print out the array of coin flips.
puts coin_heads
# Print out the first element of the array of your favourite colours.
puts fav_colours[0]
# Output the sorted version of the array of your friends and family members' ages.
puts ages.sort
# Add a new baby (0 years old) to the array of your family's ages.
ages << 0
# Using the hash of movie information, access and print the year of one of the movies.
puts movies[:'anchorman']


############ EXERCISE 2 ############
# Print out the last element of the array of your favourite colours.
puts fav_colours[fav_colours.length-1]

# Add a new city to the hash of cities and population.
cities[:'london'] = 9787426

# Reverse the array of coin flips and save it
puts coin_heads.reverse

# Print out the population of one of the cities.
puts cities[:'vancouver']

# Print out a sentence about each item in the array of performing artists. For example:
performing_artists.each do |artist|
  puts "I think #{artist} is a phenomenal performer"
end


############ EXERCISE 3 ############

# Print out the first two performing artists in that array.
puts performing_artists[0],performing_artists[1]

# For each of your favourite movies, print out a sentence about when the movie was released.
movies.each do |movie, year|
  puts "#{movie} came out in #{year}."
end

# Sort and reverse the array of ages of your family. Save it and print it to the screen.
puts ages.sort.reverse

# Add "Beauty and the Beast" movie to your hash of movies information, but with a twist: the movie was released both in 1991 and in 2017. Print it out.
movies[:'beaty and the beast'] = 1991, 2017
puts movies


############ EXERCISE 4 ############
#
# Print out all of the ages of your friends/family that are less than 30 (or any number where some ages will not be printed!).
ages.each do |age|
  if age < 30
    puts age
  end
end

# Find and output the age of the oldest person in your friends/family array.
puts ages.sort.last

# Count how many times you flipped 'heads' using the coin flips array.
counter = 0
coin_heads.each do |head|
  if head == true
    counter += 1
  end
end
puts "Heads was flipped #{counter} times"

# You realize one of the performing artists in your list is no longer a favourite. Remove one of them from the array.
performing_artists.shift
puts performing_artists

# Pick a city in your city population hash and change its population.
cities[:vancouver] = 3000000


############ EXERCISE 5 ############
#
# Find the sum total of the population in the hash of cities.
tot_population = 0
cities.each do |city, population|
  tot_population = tot_population + population
end
puts tot_population

# Using your hash containing the names of your family and friends with their ages, print out one of two messages for each depending on their age.
siblings.each do |name, age|
  if age > 30
    puts "#{name} is old"
  elsif
    puts "#{name} is young"
  end
end

# Print out the last two colours in your array of favourite colours.
puts fav_colours_sym[fav_colours_sym.length - 2], fav_colours_sym[fav_colours_sym.length - 1]

# Increase by 1 the age of everyone in your array of ages. Print it out.
ages.each do |age|
  age += 1
  puts "Age plus one is #{age}"
end
puts ages

# Add two new colours to your array of favourite colours.
fav_colours_sym.push(:crimson, :salmon)
puts fav_colours_sym


############ EXERCISE 6 ############
#
# Make a new hash that contains a list of movies for each year. Each list of movies should be an array.
movies_year = {
  '1999' => ["the matrix", "fight club", "american beauty"],
  '2004' => ["the incredibles", "mean girls", "collateral"],
  '2009' => ["avatar", "watchmen", "coraline"]
}

# Make a new array that contains each row of the buttons on a phone. Each row should be an array.
phone_buttons = [['1','2','3'],['4','5','6'],['7','8','9'],['*','0','#']]

# Make a new array that contains information about three countries. Each country should be a hash that has a name, a continent, and whether or not it is an island.
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


############ EXERCISE 7 ############
#
# Make a new array that consists of all the elements of your fav_colours and fav_artists arrays.
fav_col_artists = fav_colours.push(*performing_artists)

puts fav_col_artists
puts fav_col_artists.length

# Then sort the array and output it
puts fav_col_artists.sort


# Using the array of ages and the array of favourite artists, output a message for each pair of items. For example:

performing_artists.each do |artist|
  ages.each do |age|
    puts "I <3 #{artist} #{age}"
  end
  puts "..."
end

# One year has gone by. Use map to create a new array of the ages of your friends/relatives where all of the ages
# are increased by 1. Output the result.

ages_add_one = ages.map do |age|
  age += 1
end
puts ages_add_one

# Use reduce to add up the numbers in your ages array. Print the total sum as a sentence using string interpolation.
sum = ages_add_one.reduce(0) do |age, total|  #set initial value of total to 0
  total = total + age
end
puts sum


# Use select on your coin_flips array to make a new array that only includes the coin flips that successfully
# landed on 'heads'

heads_true = coin_heads.select do |result|
  result == true
end

puts heads_true
