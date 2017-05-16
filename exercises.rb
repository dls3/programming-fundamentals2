#### Exercise 0 ####
fav_colours = ["blue", "gray", "black", "purple", "white"]
ages = [14, 26, 31, 34, 36]
coin_heads = [true, false, false, true, false]
performing_artists = ["eminem", "the killers", "oasis"]
fav_colours_sym = [:blue, :gray, :black, :purple, :white]


words = {big: "of considerable size, extent, or intensity.",
  small: "of a size that is less than normal or usual.",
  medium: "about halfway between two extremes"}
movies = {anchorman: 2004, gladiator: 2000, goodwillhunting: 1997}
cities = {vancouver: 2135201, montreal: 4098927, toronto: 5132794}
siblings = {michael: 14, rebecca: 31, david: 34, ben: 35}


#### Exercise 1 ####
puts coin_heads
puts fav_colours[0]
puts ages.sort
ages << 0
puts movies[:anchorman]

#### Exercise 2 ####
puts fav_colours[fav_colours.length-1]
cities[:london] = 9787426
puts coin_heads.reverse
puts cities[:vancouver]

performing_artists.each do |artist|
  puts "I think #{artist} is a phenomenal performer"
end





#### Exercise 3 ####



#### Exercise 4 ####



#### Exercise 5 ####


#### Exercise 6 ####
