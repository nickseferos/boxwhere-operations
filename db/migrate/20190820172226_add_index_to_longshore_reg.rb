class AddIndexToLongshoreReg < ActiveRecord::Migration[6.0]
  def change
    add_index :longshore_regs, :number
  end
end
