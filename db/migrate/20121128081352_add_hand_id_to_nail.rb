class AddHandIdToNail < ActiveRecord::Migration
  def change
    add_column :nails, :hand_id, :integer
  end
end
