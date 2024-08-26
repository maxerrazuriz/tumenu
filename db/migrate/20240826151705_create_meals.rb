class CreateMeals < ActiveRecord::Migration[7.1]
  def change
    create_table :meals do |t|
      t.string :cuisine
      t.text :description
      t.string :recipe
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
