class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :password_digest
      t.text :user_name
      t.text :email
      t.text :name
      t.text :profile_image
      t.text :location
      t.float :latitude
      t.float :longtitude
      t.text :phone
      t.boolean :is_artist
      t.text :blurb
      t.boolean :is_admin

      t.timestamps
    end
  end
end
