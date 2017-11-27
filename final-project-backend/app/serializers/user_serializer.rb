class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :image, :email, :phone_number, :street_address, :city, :state_territory, :zip_code, :state_territory_dl, :drivers_license_id

  has_many :cars, :foreign_key => 'owner_id'
  has_many :reservations, through: :cars #owner
  has_many :car_reservations, :class_name => "Reservation", :foreign_key => 'guest_id'
  has_many :rental_cars, through: :car_reservations, :source => :car

end
