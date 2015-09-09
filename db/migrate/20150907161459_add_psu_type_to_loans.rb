class AddPsuTypeToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :psu_type, :string
    add_column :loans, :psu_serial_number, :string
  end
end
