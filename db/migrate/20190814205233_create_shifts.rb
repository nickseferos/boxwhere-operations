class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.string :load_number
      t.string :discharge_number
      t.datetime :start_day_time
      t.references :voyage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
