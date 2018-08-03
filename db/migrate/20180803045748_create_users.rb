class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :password_digest
      t.text :user_name
      t.text :email
      t.text :name
      t.text :profile_pic
      t.text :location
      t.float :latitude
      t.float :longtitude
      t.text :phone
      t.boolean :is_artist
      t.text :blurb
      t.boolean :admin

      t.timestamps
    end
  end
end
