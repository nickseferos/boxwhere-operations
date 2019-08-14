class CreateVessels < ActiveRecord::Migration[6.0]
  def change
    create_table :vessels do |t|
      t.references :steamship_line, null: false, foreign_key: true
      t.string :name
      t.integer :length_overall

      t.timestamps
    end
  end
end
