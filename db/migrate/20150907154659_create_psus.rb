class CreatePsus < ActiveRecord::Migration
  def change
    create_table :psus do |t|
      
      t.string :serial_number
      t.string :type

      t.timestamps null: false
    end
  end
end
