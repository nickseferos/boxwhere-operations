class CreateSteamshipLines < ActiveRecord::Migration[6.0]
  def change
    create_table :steamship_lines do |t|
      t.string :name

      t.timestamps
    end
  end
end
