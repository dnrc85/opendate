class AddContactFieldsToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :contact_name, :string
    add_column :loans, :tel_number, :string
    add_column :loans, :address, :string
  end
end
