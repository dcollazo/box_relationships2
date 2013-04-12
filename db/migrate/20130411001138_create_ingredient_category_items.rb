class CreateIngredientCategoryItems < ActiveRecord::Migration
  def change
    create_table :ingredient_category_items do |t|
      t.integer :box_id
      t.integer :ingredient_category_id

      t.integer :quantity
      t.timestamps
    end
  end
end
