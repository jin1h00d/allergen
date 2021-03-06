class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def ingredients_count
    self.ingredients.count
  end 
end
