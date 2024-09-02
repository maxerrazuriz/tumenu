class ReviewsController < ApplicationController
  before_action :set_meal, only: [:create]

  def create
    # create speichert das neue review in der Datenbank
    @review = Review.new(review_params)
    @review.meal = @meal
    @review.user = current_user
    if @review.save
      redirect_to meal_path(@meal)
    else
      # das Formular wird neu angezeigt wenn das speichern
      # nicht erfolgreich war
      render :new
    end
  end

  private

  def set_meal
    # sonst müsste ich in jeder Methode anstatt von
    # @booking = Booking.find(params[:booking_id]
    @meal = Meal.find(params[:meal_id])
  end

  def meal_params
    # strong params
    params.require(:review).permit(:content, :rating, :meal, :user)
  end
end
