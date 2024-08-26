class MealDiet < ApplicationRecord
  belongs_to :diet
  belongs_to :meal
end
