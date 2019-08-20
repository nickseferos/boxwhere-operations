class CreateLongshoreRegs < ActiveRecord::Migration[6.0]
  def change
    create_table :longshore_regs do |t|
      t.string :name
      t.string :number

      t.timestamps
    end
  end
end
