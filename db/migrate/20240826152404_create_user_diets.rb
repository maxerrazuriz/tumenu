class CreateUserDiets < ActiveRecord::Migration[7.1]
  def change
    create_table :user_diets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :diet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
