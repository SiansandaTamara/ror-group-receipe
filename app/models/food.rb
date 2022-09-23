class Food < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :recipe_foods, dependent: :delete_all
  has_many :recipes, through: :recipe_foods
end
