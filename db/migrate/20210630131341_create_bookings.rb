class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.float :price
      t.float :total_price
      t.integer :room_id
      t.integer :user_id
      t.date :check_out_date
      t.date :check_in_date

      t.timestamps
    end
  end
end
