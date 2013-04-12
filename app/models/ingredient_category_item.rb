class IngredientCategoryItem < ActiveRecord::Base
  belongs_to :box
  belongs_to :ingredient_category
end
