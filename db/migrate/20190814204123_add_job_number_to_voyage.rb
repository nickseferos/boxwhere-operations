class AddJobNumberToVoyage < ActiveRecord::Migration[6.0]
  def change
    add_column :voyages, :job_number, :string
  end
end
