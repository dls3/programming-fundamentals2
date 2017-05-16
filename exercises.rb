#### Exercise 0 ####
fav_colours = ["blue", "gray", "black", "purple", "white"]
ages = [36, 31, 26, 34, 14]
coin_heads = [true, false, false, true, false]
performing_artists = ["eminem", "the killers", "oasis"]
fav_colours_sym = [:blue, :gray, :black, :purple, :white]


words = {big: "of considerable size, extent, or intensity.",
  small: "of a size that is less than normal or usual.",
  medium: "about halfway between two extremes"}
movies = {'anchorman': 2004, 'gladiator': 2000, 'good will hunting': 1997}
cities = {'vancouver': 2135201, 'montreal': 4098927, 'toronto': 5132794}
siblings = {'michael': 14, 'rebecca': 31, 'david': 34, 'ben': 35}


#### Exercise 1 ####
puts coin_heads
puts fav_colours_sym[0]
puts ages.sort
ages << 0
puts movies[:'anchorman']

#### Exercise 2 ####
puts fav_colours_sym[fav_colours_sym.length-1]
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


# Add two new colours to array of favourite colours.
fav_colours_sym.push(:crimson, :salmon)
puts fav_colours_sym



#### Exercise 6 ####
