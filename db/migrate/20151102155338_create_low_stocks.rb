class CreateLowStocks < ActiveRecord::Migration
  def change
    create_table :low_stocks do |t|

      t.timestamps null: false
    end
  end
end
