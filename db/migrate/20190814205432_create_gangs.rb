class CreateGangs < ActiveRecord::Migration[6.0]
  def change
    create_table :gangs do |t|
      t.string :location
      t.string :first_crane_operator
      t.string :second_crane_operator
      t.string :foreman
      t.references :shift, null: false, foreign_key: true

      t.timestamps
    end
  end
end
