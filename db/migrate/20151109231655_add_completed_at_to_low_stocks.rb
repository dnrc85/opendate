class AddCompletedAtToLowStocks < ActiveRecord::Migration
  def change
    add_column :low_stocks, :completed_at, :text
  end
end
