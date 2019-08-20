class AddDockBossToShift < ActiveRecord::Migration[6.0]
  def change
    add_column :shifts, :dock_foreman, :string
  end
end
