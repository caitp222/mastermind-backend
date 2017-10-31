# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Game.destroy_all
Guess.destroy_all
Peg.destroy_all

User.create(username: "Caitlin", password: "likesbikes")
User.create(username: "Nico", password: "likesbikes")

5.times do
  Game.create(user_id: 1)
end

6.times do
  Game.create(user_id: 2)
end

12.times do
  Guess.create(game_id: rand(1..11))
end

15.times do
  Peg.create(pegable_type: "Guess", pegable_id: rand(1..12))
end

15.times do
  Peg.create(pegable_type: "Game", pegable_id: rand(1..11))
end
