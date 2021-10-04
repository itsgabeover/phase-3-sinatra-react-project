puts "🌱 Seeding spices..."

# Seed your database here
# This will delete any existing rows from the game and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Game.destroy_all
User.destroy_all


puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)


# t.integer :game_title
# t.integer :game_studio
# t.array :genre ["", "", ""]
# t.float :price
# t.integer :description
puts "Creating games..."
game1 = Game.create(game_title: "New World", price: 39.99, game_studio: "Amazon Game Studios", genre:"MMO, RPG", description: "Gabe likes this")
game2 = Game.create(game_title: "Slay the Spire", price: 20.00, game_studio: "Mega Crit Games", genre:"Roguelike, Deck-building game, Strategy video game", description: "Gabe likes this")
game3 = Game.create(game_title: "Stardew Valley", price: 5, game_studio: "Eric Barone", genre: "Simulation, Casual, Role-Playing, Indie", description: "Tina likes this")



puts "✅ Done seeding!"
