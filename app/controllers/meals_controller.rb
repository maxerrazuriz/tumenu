class MealsController < ApplicationController

  before_action :set_meals, only: [:show]

  def show
    @ingredients = @meal.meal_ingredients.includes(:ingredient)
    @user_meal = UserMeal.new
  end

  def index
    @meals = Meal.all
    carousel
    if params[:query].present?
      sql_subquery = <<~SQL
        meals.name @@ :query
        OR meals.description @@ :query
        OR meals.cuisine @@ :query
        OR ingredients.name @@ :query
        OR diets.name @@ :query
      SQL
      @meals = @meals.joins(:ingredients)
                     .left_outer_joins(:diets)
                     .where(sql_subquery, query: "%#{params[:query]}%")
                     .distinct
    end
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user = current_user
    if @meal.save
      redirect_to meal_path(@meal)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def carousel
    @japanese_list = Meal.where(cuisine: "japanese")
    @indian_list = Meal.where(cuisine: "indian")
    @italian_list = Meal.where(cuisine: "italian")
    @canadian_list = Meal.where(cuisine: "canadian")
    @cuisines = [@japanese_list, @indian_list, @italian_list, @canadian_list]
  end

  private

  def set_meals
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :cuisine, :description, :recipe, :user) # then add picture
  end

end
