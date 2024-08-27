class AddColumnUser < ActiveRecord::Migration[7.1]
  def change
    add_column :user, :first_name
    add_column :user, :last_name
    add_column :user, :address
    add_column :user, age: :integer
  end
end
