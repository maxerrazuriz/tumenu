# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
CUISINE = ["japanese", "canadian", "spanish", "italian", "german", cuban]
User.destroy_all
users = []
meals = []
ingrs = []
5.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Locations::Australia.location,
    age: rand(7..38),
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password"
  )
end

5.times do
  meal = Meal.new(
    cuisine: CUISINE.sample,
    description: Faker::GreekPhilosophers.quote,
    recipe: Faker::Quote.famous_last_words,
    user: users.sample
  )
end

5.times do
  ingr = Ingridient.new(
    name: Faker::Food.ingredient,
    unit: ["l", "ml", "kg", "g", "ly"].sample
  )
end
