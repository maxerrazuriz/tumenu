class UserMeal < ApplicationRecord
  belongs_to :meal
  belongs_to :user
  validates :date, :time_of_day, presence: true
  TIMES = ["breakfast", "lunch", "dinner", "snack", "assaulting the fridge at 2 am"]
end
