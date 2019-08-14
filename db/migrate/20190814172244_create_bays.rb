class CreateBays < ActiveRecord::Migration[6.0]
  def change
    create_table :bays do |t|
      t.integer :number
      t.integer :bay_size
      t.integer :bay_cells
      t.integer :bay_height
      t.integer :bay_total_container_number

      t.timestamps
    end
  end
end
