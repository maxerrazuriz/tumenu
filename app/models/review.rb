class Review < ApplicationRecord
  belongs_to :meal
  belongs_to :user
  validates :content, :rating, presence: true
  validates :rating, numericality: { in: (1..5) }
end
