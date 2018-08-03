class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.text :title
      t.integer :user_id
      t.decimal :price
      t.text :artwork
      t.text :category

      t.timestamps
    end
  end
end
