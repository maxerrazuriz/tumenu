class Diet < ApplicationRecord
  has_many :meal, through: :meal_diet
  has_many :users, through: :user_diet
end
