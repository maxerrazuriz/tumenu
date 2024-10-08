class Meal < ApplicationRecord
  belongs_to :user
  has_many :meal_ingredients
  has_many :ingredients, through: :meal_ingredients
  has_many :reviews
  accepts_nested_attributes_for :meal_ingredients
  has_many :meal_diets
  has_many :diets, through: :meal_diets
  has_one_attached :photo

  validates :cuisine, :description, :recipe, presence: true
end
