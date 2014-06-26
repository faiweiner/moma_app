class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.integer :year
      t.string :medium
      t.string :style
      t.text :image
    end
  end
end
