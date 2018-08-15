class User < ApplicationRecord
  has_many :recipes, dependent: :destroy
  has_many :allergeys, dependent: :destroy
  has_many :ingredients, through: :allergeys, dependent: :destroy
end
