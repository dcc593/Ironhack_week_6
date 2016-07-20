class Ingredient < ApplicationRecord
	has_many :sandwich_ingredients
	has_many :sandwich, through: "sandwich_ingredients"
end
