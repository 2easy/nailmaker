class CreateNails < ActiveRecord::Migration
  def change
    create_table :nails do |t|

      t.timestamps
    end
  end
end
