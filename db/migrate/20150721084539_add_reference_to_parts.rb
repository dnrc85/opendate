class AddReferenceToParts < ActiveRecord::Migration
  def change
    add_reference :parts, :order, index: true, foreign_key: true
  end
end
