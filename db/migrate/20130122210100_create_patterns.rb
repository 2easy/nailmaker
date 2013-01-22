class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :name_pl
      t.string :name_ang
      t.string :image_url

      t.timestamps
    end
  end
end
