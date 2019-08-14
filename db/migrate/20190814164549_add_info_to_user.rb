class AddInfoToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :role, null: false, foreign_key: true
    add_column :users, :fname, :string
    add_column :users, :lname, :string
  end
end
