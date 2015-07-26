class AddNotesToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :notes, :string
  end
end
