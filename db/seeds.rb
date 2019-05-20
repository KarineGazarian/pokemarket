# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Pokemon.destroy_all
User.destroy_all

puts 'Creating users...'

kaka = User.create!(
  username: "kaka",
  email: "karine.gazarian@hec.edu",
  password: "karine1991"
  )

alice = User.create!(
  username: "alice",
  email: "alice.dechalendar@gmail.com",
  password: "alice1991"
  )

puts 'Creating pokemons...'

10.times do
  pokemon = Pokemon.new(
  name: Faker::Games::Pokemon.name,
  category: ["Fire", "Water", "Psy", "Flying", "Electric"].sample,
  level: rand(1..100),
  price: rand(1..1000),
  )
  pokemon.user = kaka
  pokemon.save!
end

10.times do
  pokemon = Pokemon.new(
  name: Faker::Games::Pokemon.name,
  category: ["Fire", "Water", "Psy", "Flying", "Electric"].sample,
  level: rand(1..100),
  price: rand(1..1000),
  )
  pokemon.user = alice
  pokemon.save!
end

puts 'Finished!'
