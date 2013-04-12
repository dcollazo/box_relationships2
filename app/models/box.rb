class Box < ActiveRecord::Base
  has_many :ingredient_category_items
  has_many :ingredient_categories, :through => :ingredient_category_items
end
