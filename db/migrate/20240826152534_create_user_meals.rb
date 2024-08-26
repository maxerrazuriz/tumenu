class CreateUserMeals < ActiveRecord::Migration[7.1]
  def change
    create_table :user_meals do |t|
      t.date :date
      t.string :time_of_day
      t.references :meal, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
