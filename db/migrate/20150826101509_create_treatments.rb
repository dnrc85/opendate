class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string :part_number
      t.string :description
      t.string :quantity
      t.string :supplier
      t.string :process
      t.string :date_sent
      t.string :date_due_back
      t.string :notes
      

      t.timestamps null: false
    end
  end
end
