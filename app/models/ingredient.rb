class Ingredient < ApplicationRecord
  has_many :meals, through: :meal_ingredients
  validates :name, :unit, presence: true
end
