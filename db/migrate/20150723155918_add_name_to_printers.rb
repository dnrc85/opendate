class AddNameToPrinters < ActiveRecord::Migration
  def change
    add_column :printers, :name, :string
  end
end
