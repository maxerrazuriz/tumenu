class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :profile_picture
  has_many :user_diets
  has_many :diets, through: :user_diets
  has_many :reviews
  has_many :user_meals

  validates :address, :age, :last_name, :first_name, presence: true
end
