class PendingReservationSerializer < ActiveModel::Serializer
  attributes :id, :guest_id, :car_id, :start_date, :end_date, :pickup_time, :dropoff_time, :description, :owner

  belongs_to :guest, :class_name => 'User'
  belongs_to :car
  has_one :owner, :class_name => 'User', through: :car

  def owner
    object.car.owner
  end

  def start_date
    object.start_date.strftime("%A, %m/%d/%y")
  end

  def end_date
    object.end_date.strftime("%A, %m/%d/%y")
  end
end
