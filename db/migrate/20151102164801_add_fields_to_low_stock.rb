class AddFieldsToLowStock < ActiveRecord::Migration
  def change
    add_column :low_stocks, :part_number, :string
    add_column :low_stocks, :description, :string
    add_column :low_stocks, :quantity_in_stock, :integer
    add_column :low_stocks, :quantity_required, :integer
    add_reference :low_stocks, :user, index: true, foreign_key: true
  end
end
