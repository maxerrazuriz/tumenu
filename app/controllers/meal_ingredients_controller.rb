class MealIngredientsController < ApplicationController

  def index
    meal_ingredients_list = []
    current_user.user_meals.each do |user_meal|
      meal_ingredients_list << user_meal.meal.meal_ingredients
    end
    meal_ingredients_list.flatten!
    @grocery_list = Hash.new(0)
    meal_ingredients_list.each do |meal_ingredient|
      @grocery_list[meal_ingredient.ingredient_id] += meal_ingredient.quantity
    end

  end
end
