class UserMeal < ApplicationRecord
  belongs_to :meal
  belongs_to :user
  validates :date, :time_of_day, presence: true
  TIMES = ["Breakfast", "Lunch", "Dinner", "Snack"]
end
