class Meal < ApplicationRecord
  belongs_to :user
  has_many :meal_ingredients
  has_many :ingredients, through: :meal_ingredients
  has_many :reviews

  validates :cuisine, :description, :recipe, presence: true
end
