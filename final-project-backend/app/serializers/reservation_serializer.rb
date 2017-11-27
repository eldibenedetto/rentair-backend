class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :guest_id, :car_id, :start_date, :end_date, :pickup_time, :dropoff_time, :description, :owner

  belongs_to :guest, :class_name => 'User'
  belongs_to :car
  has_one :owner, :class_name => 'User', through: :car


end
