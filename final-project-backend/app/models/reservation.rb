class Reservation < ApplicationRecord

  belongs_to :guest, :class_name => 'User'
  belongs_to :car
  has_one :owner, :class_name => 'User', through: :car

end
