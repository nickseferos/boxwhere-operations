class CreateVoyages < ActiveRecord::Migration[6.0]
  def change
    create_table :voyages do |t|
      t.string :numberin
      t.string :numberout
      t.datetime :eta
      t.datetime :etd
      t.datetime :ata
      t.datetime :atd
      t.references :terminal, null: false, foreign_key: true
      t.references :vessel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
