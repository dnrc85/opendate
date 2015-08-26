class AddCompletedAtToTreatments < ActiveRecord::Migration
  def change
    add_column :treatments, :completed_at, :text
  end
end
