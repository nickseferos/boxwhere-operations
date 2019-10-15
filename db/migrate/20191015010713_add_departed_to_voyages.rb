class AddDepartedToVoyages < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :departed, :boolean
  end
end
