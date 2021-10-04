puts "🌱 Seeding spices..."

# Seed your database here
# This will delete any existing rows from the game and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Game.destroy_all
User.destroy_all
Profile.destroy_all


puts "Creating users..."
user1 = User.create(full_name: "Tina")
user2 = User.create(full_name: "Gabriel Miranda")
user3 = User.create(full_name: "Just Gabe")

puts "Creating games..."
game1 = Game.create(game_title: "New World", price: 39.99, game_studio: "Amazon Game Studios", genre:"MMO, RPG", description: "Gabe likes this")
game2 = Game.create(game_title: "Slay the Spire", price: 20.00, game_studio: "Mega Crit Games", genre:"Roguelike, Deck-building game, Strategy video game", description: "Gabe likes this")
game3 = Game.create(game_title: "Stardew Valley", price: 5, game_studio: "Eric Barone", genre: "Simulation, Casual, Role-Playing, Indie", description: "Tina likes this")

# t.integer :game_id
# t.integer :user_id
# t.date :timestamp

puts "Creating profiles..."
profile1 = Profile.create(game_id: 1, user_id: 1)
profile2 = Profile.create(game_id: 2, user_id: 2)
profile3 = Profile.create(game_id: 3, user_id: 3)
#profile3 = Profile.create(game_id: 3, user_id: 1)
puts "✅ Done seeding!"
