class PendingReservation < ApplicationRecord

  belongs_to :guest, :class_name => 'User'
  belongs_to :car

end
