class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :polish_name
      t.string :english_name
      t.string :rgb_color

      t.timestamps
    end
  end
end
