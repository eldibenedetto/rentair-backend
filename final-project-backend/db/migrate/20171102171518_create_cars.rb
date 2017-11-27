class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.integer :owner_id
      t.string :make
      t.string :model
      t.string :year
      t.string :image, default: "https://wsa1.pakwheels.com/assets/default-display-image-car-638815e7606c67291ff77fd17e1dbb16.png"
      t.integer :price
      t.string :address
      t.float :latitude
      t.float :longitude
    end
  end
end
