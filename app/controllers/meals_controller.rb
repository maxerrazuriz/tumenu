class MealsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index, :carousel]

  before_action :set_meals, only: [:show]

  def show
    @ingredients = @meal.meal_ingredients.includes(:ingredient)
  end

  def index
    @meal = Meal.all
    carousel
    if params[:query].present?
      sql_subquery = <<~SQL
        name @@ :query
        OR description @@ :query
        OR meal_ingredients.ingredients @@ :query
      SQL
      @meal = @meal.joins(:name).where(sql_subquery, query: "%#{params[:query]}%")
    end

  end

  def new
    @meal = Meal.new
    @meal_ingredient = 10.times { @meal.meal_ingredients.build }
  end

  def create
    @meal_params = meal_params
    @meal_params[:meal_ingredients_attributes] = meal_params[:meal_ingredients_attributes].select { |id, hash| hash[:ingredient_id].present? }

    @meal = Meal.new(@meal_params)
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
    @meals = [@japanese_list, @indian_list, @italian_list, @canadian_list]
  end

  private

  def set_meals
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :cuisine, :description, :recipe, :user, :ingredients, meal_ingredients_attributes: [:ingredient_id, :quantity]) #then add picture
  end

end
