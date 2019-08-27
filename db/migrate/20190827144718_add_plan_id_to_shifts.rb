class AddPlanIdToShifts < ActiveRecord::Migration[6.0]
  def change
    add_reference :shifts, :plan, null: false, foreign_key: true
  end
end
