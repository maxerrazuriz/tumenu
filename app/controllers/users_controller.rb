class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @diets = @user.diets
    @user_diets = Diet.all
    @user_diet = UserDiet.new
  end
end
