class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      
      t.integer :order_number
      t.string :customer
      t.string :printer
      t.integer :quantity
      t.string :order_date
      t.string :due_date

      t.timestamps null: false
    end
  end
end
