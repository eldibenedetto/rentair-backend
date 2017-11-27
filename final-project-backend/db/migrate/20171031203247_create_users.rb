class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :image, default: "https://res.cloudinary.com/closebrace/image/upload/w_400/v1491315007/usericon_id76rb.png"
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.string :street_address
      t.string :city
      t.string :state_territory
      t.string :zip_code
      t.string :state_territory_dl
      t.string :drivers_license_id
      t.timestamps
    end
  end
end
