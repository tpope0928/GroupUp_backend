# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all
Game.destroy_all
Username.destroy_all

player_a = Player.create(name: 'drewP', city: 'Gaithersburg', state: 'Maryland')
player_b = Player.create(name: 'alecT', city: 'Houston', state: 'Texas')
player_c = Player.create(name: 'robbyM', city: 'Nashville', state: 'Tennessee')

game_a = Game.create(title: 'Dota2', genre: 'MOBA', skill_level: '3', player_id: 1)
game_b = Game.create(title: 'Valorant', genre: 'FPS', skill_level: '3', player_id: 1)
game_c = Game.create(title: 'Call of Duty: Warzone', genre: 'BR', skill_level: '4', player_id: 3)

username_a = Username.create(player: player_a, game: game_a)
username_b = Username.create(player: player_b, game: game_b)
username_c = Username.create(player: player_c, game: game_c)


