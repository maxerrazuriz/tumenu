class MealsController < ApplicationController
  before_action :set_meals, only: [:show]

  def show
    @ingredients = @meal.meal_ingredients.includes(:ingredient)
  end

  private

  def set_meals
    @meal = Meal.find(params[:id])
  end
end
