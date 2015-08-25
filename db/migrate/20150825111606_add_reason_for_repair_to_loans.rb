class AddReasonForRepairToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :reason_for_repair, :text
  end
end
