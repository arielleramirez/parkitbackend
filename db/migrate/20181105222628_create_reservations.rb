class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :user_id
    t.integer :parkingspace_id
    t.string :name
    t.string :street
    t.string :city
    t.string :state
    t.string :zip
    t.string :lat
    t.string :lng

      t.timestamps
    end
  end
end
