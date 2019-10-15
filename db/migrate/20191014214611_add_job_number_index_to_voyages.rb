class AddJobNumberIndexToVoyages < ActiveRecord::Migration[6.0]
  def change
    add_index :voyages, :job_number
  end
end
