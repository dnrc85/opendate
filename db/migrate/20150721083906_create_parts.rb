class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      
      t.string :part_number
      t.string :description
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
