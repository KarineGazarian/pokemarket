# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Transaction.destroy_all
Wishlist.destroy_all
Pokemon.destroy_all
User.destroy_all

puts 'Creating users...'

kaka = User.create!(
  username: "Kaka",
  email: "karine.gazarian@hec.edu",
  password: "karine1991"
  )

alice = User.create!(
  username: "Alice",
  email: "alice.dechalendar@gmail.com",
  password: "alice1991"
  )

vlad = User.create!(
  username: "Vlad",
  email: "vladimirdeziegler@gmail.com",
  password: "123456"
  )

frankie = User.create!(
  username: "Frankie",
  email: "ingleson.fl@gmail.com",
  password: "123456"
  )


puts 'Creating pokemons...'


pokemon = Pokemon.new(
  name: "pikachu",
  category: "electric",
  level: 34,
  price: 5,
  description: "Very strong and cute pikachu with excellent thunder shock attack",
  photoseed: "https://cdn.ndtv.com/tech/images/gadgets/pikachu_hi_pokemon.jpg?output-quality=80"
  )
  pokemon.user = alice
  pokemon.save!

pokemon = Pokemon.new(
  name: "venusaur",
  category: "grass",
  level: 68,
  price: 12,
  description: "Caught in viridian forest, very efficient against water pokemon with its power whip attack",
  photoseed: "https://vignette.wikia.nocookie.net/pokemon/images/4/45/Venusaur_AG073.png/revision/latest?cb=20150614070536"
  )
  pokemon.user = vlad
  pokemon.save!

pokemon = Pokemon.new(
  name: "vulpix",
  category: "fire",
  level: 13,
  price: 12,
  description: "Very rare pokemon and one of the cuttiest, a bit shy at the beginning but so cute afterwards",
  photoseed: "https://vignette.wikia.nocookie.net/pokemon/images/3/3b/Vulpix_AG151.png/revision/latest?cb=20150625054219"
  )
  pokemon.user = kaka
  pokemon.save!

pokemon = Pokemon.new(
  name: "dragonite",
  category: "dragon",
  level: 83,
  price: 30,
  description: "Best pokemon on earth if you want to beat all your competitors",
  photoseed: "https://img.pokemondb.net/artwork/large/dragonite.jpg"
  )
  pokemon.user = frankie
  pokemon.save!

pokemon = Pokemon.new(
  name: "snorlax",
  category: "normal",
  level: 45,
  price: 26,
  description: "The biggest pokemon on earth, so heavy that you cannot keep it in its pokeball. Fatal Heavy Slam attack",
  photoseed: "https://img.pokemondb.net/artwork/large/dragonite.jpg"
  )
  pokemon.user = kaka
  pokemon.save!

pokemon = Pokemon.new(
  name: "alakazam",
  category: "psychic",
  level: 30,
  price: 20,
  description: "Be careful with its spoons, if you touch them you die",
  photoseed: "https://vignette.wikia.nocookie.net/pokemon/images/9/98/Vito_Alakazam.png/revision/latest?cb=20151007063238"
  )
  pokemon.user = vlad
  pokemon.save!

pokemon = Pokemon.new(
  name: "pikachu",
  category: "electric",
  level: 12,
  price: 3,
  description: "Me and my pokemon, I have to sell it because he does not listen to me... Pika prefers girls 🤷‍♂️",
  photoseed: "https://assets.pokemon.com/assets/cms2/img/watch-pokemon-tv/seasons/season18/season18_ep41_ss02.jpg"
  )
  pokemon.user = vlad
  pokemon.save!

pokemon = Pokemon.new(
  name: "charizard",
  category: "fire",
  level: 76,
  price: 34,
  description: "This pokemon is AMAZING!!! I really love its flare blitz attack",
  photoseed: "https://vignette.wikia.nocookie.net/pokemonfanon/images/8/88/Ash_Charizard_Flamethrower.png/revision/latest?cb=20160901182515"
  )
  pokemon.user = kaka
  pokemon.save!

pokemon = Pokemon.new(
  name: "jigglypuff",
  category: "fairy",
  level: 8,
  price: 3,
  description: "This is the cuttiest pokemon you've ever seen, especially if you have sleep issues",
  photoseed: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/039.png"
  )
  pokemon.user = alice
  pokemon.save!

pokemon = Pokemon.new(
  name: "gengar",
  category: "ghost",
  level: 88,
  price: 50,
  description: "Gengar is a great ghost pokemon, and he loves making jokes all the time",
  photoseed: "http://static.pokemonpets.com/images/monsters-images-800-800/94-Gengar.png"
  )
  pokemon.user = frankie
  pokemon.save!

pokemon = Pokemon.new(
  name: "gyarados",
  category: "water",
  level: 50,
  price: 48,
  description: "On promotion",
  photoseed: "https://projectpokemon.org/home/uploads/monthly_2018_03/large.Gyarados-Pokemon-X-and-Y.jpg.9c32530a4f9b5fe8bb6469758ecf8e4c.jpg"
  )
  pokemon.user = frankie
  pokemon.save!

pokemon = Pokemon.new(
  name: "mew",
  category: "psychic",
  level: 120,
  price: 1000,
  description: "The most powerful pokemon you've ever seen, can beat anyone with only one attack",
  photoseed: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/151.png"
  )
  pokemon.user = kaka
  pokemon.save!

pokemon = Pokemon.new(
  name: "psyduck",
  category: "water",
  level: 23,
  price: 34,
  description: "Love its water gun, amazing power when its head hurts",
  photoseed: "https://vignette.wikia.nocookie.net/sonicpokemon/images/b/b2/Psyduck_AG_anime.png/revision/latest?cb=20130626041931"
  )
  pokemon.user = alice
  pokemon.save!

pokemon = Pokemon.new(
  name: "arcanine",
  category: "fire",
  level: 56,
  price: 45,
  description: "My favorite pokemon, its loyalty is uncomparable",
  photoseed: "https://s1.ibtimes.com/sites/www.ibtimes.com/files/styles/lg/public/2016/09/20/arcanine.png"
  )
  pokemon.user = vlad
  pokemon.save!

pokemon = Pokemon.new(
  name: "machamp",
  category: "fighting",
  level: 76,
  price: 50,
  description: "The best fighter in the pokemon world, can put all pokemons K.O in one round!",
  photoseed: "https://pokemongo.gamepress.gg/sites/pokemongo/files/2017-12/Gavin_Machamp.png"
  )
  pokemon.user = frankie
  pokemon.save!

pokemon = Pokemon.new(
  name: "slowbro",
  category: "water",
  level: 36,
  price: 25,
  description: "A bit lazy, needs some training but huge potential",
  photoseed: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/intermediary/f/0f6bf8db-281f-47e7-a1b6-9e9f736a4313/d4w5tjn-1f3ae5bd-742d-47ef-a062-b75cce0623b4.png/v1/fill/w_800,h_489,strp/prize__slowbro_by_mizzi_cat_d4w5tjn-fullview.png"
  )
  pokemon.user = frankie
  pokemon.save!

pokemon = Pokemon.new(
  name: "starmie",
  category: "water",
  level: 87,
  price: 78,
  description: "A bit weak due to a match with vlad but an incredible pokemon if you are looking for a water best-in-class",
  photoseed: "https://i.ytimg.com/vi/lwIL0XY9RQM/hqdefault.jpg"
  )
  pokemon.user = alice
  pokemon.save!

pokemon = Pokemon.new(
  name: "squirtle",
  category: "water",
  level: 12,
  price: 45,
  description: "Previous leader of the famous Squirtle gang! Already a legend!",
  photoseed: "http://news4c.com/wp-content/uploads/2018/07/sqrtke.jpeg"
  )
  pokemon.user = alice
  pokemon.save!

puts 'Finished!'


