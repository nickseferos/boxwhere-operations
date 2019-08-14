class CreatePorts < ActiveRecord::Migration[6.0]
  def change
    create_table :ports do |t|
      t.references :state, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
