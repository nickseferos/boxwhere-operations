class AddVesselToBays < ActiveRecord::Migration[6.0]
  def change
    add_reference :bays, :vessel, null: false, foreign_key: true
  end
end
