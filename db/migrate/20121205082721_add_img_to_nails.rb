class AddImgToNails < ActiveRecord::Migration
  def change
    add_column :nails, :img, :string
  end
end
