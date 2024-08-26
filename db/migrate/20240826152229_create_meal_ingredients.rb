class CreateMealIngredients < ActiveRecord::Migration[7.1]
  def change
    create_table :meal_ingredients do |t|
      t.references :ingredient, null: false, foreign_key: true
      t.references :meal, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
