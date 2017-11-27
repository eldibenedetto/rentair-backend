class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :guest_id
      t.integer :car_id
      t.string :start_date
      t.string :pickup_time
      t.string :end_date
      t.string :dropoff_time
      t.string :description
      t.integer :duration
    end
  end
end
