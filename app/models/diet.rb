class Diet < ApplicationRecord
  has_many :meals, through: :meal_diets
  has_many :users, through: :user_diets
end
