class CarSerializer < ActiveModel::Serializer
  attributes :id, :owner_id, :make, :model, :year, :image, :price, :address, :latitude, :longitude,  :car_owners

  belongs_to :owner, :class_name => 'User'
  has_many :reservations
  has_many :guests, :class_name => 'User', through: :reservations
end

def car_owners
  cars = Car.all.map {| car| car.owner_id }
  User.all.select {|user| cars.include?(user.id) }
end
