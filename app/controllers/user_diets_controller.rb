class UserDietsController < ApplicationController
  def create
    @user_diet = UserDiet.new(user_diet_params)
    @user_diet.user = current_user
    @user_diet.save
    redirect_to profile_path(current_user)
  end

  def destroy
    @user_diet = UserDiet.find(params[:id])
    @user_diet.destroy
    flash[:notice] = "Diet successfully removed."
    redirect_to profile_path(current_user)
  end

  private

  def user_diet_params
    params.require(:user_diet).permit(:diet_id)
  end
end
