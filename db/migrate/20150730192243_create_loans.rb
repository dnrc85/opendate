class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      
      t.string :customer
      t.string :printer
      t.string :serial_number
      t.string :shipped_date

      t.timestamps null: false
    end
  end
end
