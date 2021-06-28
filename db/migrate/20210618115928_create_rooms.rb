class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :home_type
      t.string :room_type
      t.integer :user_id
      t.integer :accomodate
      t.integer :bedroom
      t.integer :price
      t.string :description
      t.string :photo
      t.boolean :tv
      t.boolean :internet
      t.boolean :air_conditioner
      t.boolean :heating
      t.boolean :kitchen
      t.string :room_name
      t.integer :bathroom
      t.boolean :is_active
      t.string :location

      t.timestamps
    end
  end
end
