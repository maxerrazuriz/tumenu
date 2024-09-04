class MealIngredientsController < ApplicationController

  def index
    meal_ingredients_list = []
    @day_filter = params[:filter] ? params[:filter].to_i : 7
    current_user.user_meals.where(date: Date.today..Date.today + @day_filter).each do |user_meal|
      meal_ingredients_list << user_meal.meal.meal_ingredients
    end
    meal_ingredients_list.flatten!
    @grocery_list = Hash.new(0)

    meal_ingredients_list.each do |meal_ingredient|
      @grocery_list[meal_ingredient.ingredient_id] += meal_ingredient.quantity
    end

    @grocery_list = @grocery_list.sort_by do |ingredient_id, _quantity|
      Ingredient.find(ingredient_id).name
    end
  end
end
