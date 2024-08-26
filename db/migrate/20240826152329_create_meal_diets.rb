class CreateMealDiets < ActiveRecord::Migration[7.1]
  def change
    create_table :meal_diets do |t|
      t.references :diet, null: false, foreign_key: true
      t.references :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
