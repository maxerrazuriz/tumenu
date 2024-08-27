class MealsController < ApplicationController

  def index
    @meal = Meal.all
  end

end
