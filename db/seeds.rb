# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Meal.destroy_all
Ingridient.destroy_all
MealIngridient.destroy_all
Diet.destroy_all
MealDiet.destroy_all
UserDiet.destroy_all
UserMeal.destroy_all

users = []
meals = []
ingrs = []
diets = []

5.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    age: rand(7..38),
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password"
  )
  users << user
end

5.times do
  meal = Meal.new(
    cuisine: Faker::Food.ethnic_category,
    description: Faker::Food.description,
    recipe: Faker::Quote.famous_last_words,
    user: users.sample,
    #name: Faker::Food.dish
  )
  meals << meal
end

5.times do
  ingr = Ingredient.new(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement
  )
  ingrs << ingr
end

5.times do
  MealIngredient.new(
    ingredient: ingrs.sample,
    meal: meals.sample,
    quantity: rand(1..200)
  )
end

5.times do
  diet = Diet.new(
    name: Faker::Food.sushi
  )
  diets << diet
end

5.times do
  MealDiet.new(
    diet: diets.sample,
    meal: meals.sample
  )
end

5.times do
  UserDiet.new(
    user: users.sample,
    diet: diets.sample
  )
end

5.times do
  UserMeal.new(
    date: Faker::Date.between(from: '2024-09-09', to: '2025-09-15'),
    time_of_day: ["breakfast", "lunch", "dinner", "snach", "assault the frindge at 2am"].sample,
    meal: meals.sample,
    user: users.sample
  )
end

5.times do
  Review.new(
    content: Faker::Quote.yoda,
    rating: rand(1..5),
    meal: meals.sample,
    user: users.sample
  )
end
