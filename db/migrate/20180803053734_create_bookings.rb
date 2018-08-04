class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :customer_id
      t.integer :artist_id
      t.date :date
      t.integer :start_hour

      t.timestamps
    end
  end
end
