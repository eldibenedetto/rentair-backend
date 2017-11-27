class CreatePendingReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :pending_reservations do |t|
      t.integer :guest_id
      t.integer :car_id
      t.datetime :start_date
      t.string :pickup_time
      t.datetime :end_date
      t.string :dropoff_time
      t.string :description
    end
  end
end
