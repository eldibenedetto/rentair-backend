class User < ApplicationRecord

  has_many :cars, :foreign_key => 'owner_id', :dependent => :destroy
  has_many :reservations, through: :cars, :dependent => :destroy #owner
  has_many :car_reservations, :class_name => "Reservation", :foreign_key => 'guest_id', :dependent => :destroy
  has_many :rental_cars, through: :car_reservations, :source => :car, :dependent => :destroy

  has_secure_password

end
