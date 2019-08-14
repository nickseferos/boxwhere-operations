class CreateTerminals < ActiveRecord::Migration[6.0]
  def change
    create_table :terminals do |t|
      t.references :port, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
