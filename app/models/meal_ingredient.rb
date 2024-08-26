class MealIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :meal
  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }
end
