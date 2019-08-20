class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.references :voyage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
