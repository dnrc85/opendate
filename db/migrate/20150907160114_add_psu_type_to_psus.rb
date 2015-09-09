class AddPsuTypeToPsus < ActiveRecord::Migration
  def change
    add_column :psus, :psu_type, :string
  end
end
