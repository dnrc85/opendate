class AddDueDateToLowStock < ActiveRecord::Migration
  def change
    add_column :low_stocks, :due_date, :string
  end
end
