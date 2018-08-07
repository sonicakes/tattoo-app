class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.integer :user_id
      t.date :start_date
      t.date :end_date
      t.text :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
