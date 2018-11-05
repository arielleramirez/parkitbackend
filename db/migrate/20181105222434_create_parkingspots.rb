class CreateParkingspots < ActiveRecord::Migration[5.2]
  def change
    create_table :parkingspots do |t|
      t.integer :reservation_id
      t.integer :garage_id

      t.timestamps
    end
  end
end
