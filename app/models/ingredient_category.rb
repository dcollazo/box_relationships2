class IngredientCategory < ActiveRecord::Base
  has_many :ingredient_category_items
  has_many :boxes, through: :ingredient_category_items
end
