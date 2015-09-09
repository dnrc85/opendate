class AddCompletedAtToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :completed_at, :text
  end
end
