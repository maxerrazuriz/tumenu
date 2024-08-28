# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
MealDiet.destroy_all
UserDiet.destroy_all
UserMeal.destroy_all
MealIngredient.destroy_all
Review.destroy_all
Meal.destroy_all
User.destroy_all
Ingredient.destroy_all
Diet.destroy_all

require "open-uri"
User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  address: Faker::Address.street_address,
  age: rand(7..38),
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password"
)

4.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    age: rand(7..38),
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password"
  )
end

18.times do
  Meal.create!(
    cuisine: Faker::Food.ethnic_category,
    description: Faker::Food.description,
    recipe: Faker::Lorem.paragraphs.join,
    user: User.all.sample,
    name: Faker::Food.dish
  )
end

25.times do
  Ingredient.create!(
    name: Faker::Food.ingredient,
    unit: Faker::Food.measurement
  )
end

Meal.all.each do |meal|
  rand(2..10).times do
    MealIngredient.create!(
      ingredient: Ingredient.all.sample,
      meal: meal,
      quantity: rand(1..200)
    )
  end
end

["dairy free", "gluten free", "vegan", "vegetarian", "peanuts"].each do |diet|
  Diet.create!(
    name: diet
  )
end

5.times do
  MealDiet.new(
    diet: Diet.all.sample,
    meal: Meal.all.sample
  )
end

5.times do
  UserDiet.new(
    user: User.all.sample,
    diet: Diet.all.sample
  )
end

5.times do
  UserMeal.new(
    date: Faker::Date.between(from: '2024-09-09', to: '2025-09-15'),
    time_of_day: ["breakfast", "lunch", "dinner", "snack", "assault the fridge at 2am"].sample,
    meal: Meal.all.sample,
    user: User.all.sample
  )
end

15.times do
  Review.new(
    content: Faker::Quote.yoda,
    rating: rand(1..5),
    meal: Meal.all.sample,
    user: User.all.sample
  )
end
