class UserMealsController < ApplicationController


  def index
    @meals = UserMeal.where(user: current_user)
  end

  def create
    @user_meal = UserMeal.new(user_meal_params)
    @user_meal.user = current_user
    @user_meal.meal = Meal.find(params[:meal_id])
    if @user_meal.save
      redirect_to user_meals_path # then will redirect to calendar but for now this is fine
    end
  end


  private

  def user_meal_params
    params.require(:user_meal).permit(:date, :time_of_day, :meal_id, :user) # then add picture
  end
end
