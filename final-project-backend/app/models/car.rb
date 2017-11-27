class Car < ApplicationRecord

  belongs_to :owner, :class_name => 'User'
  has_many :reservations, :dependent => :destroy
  has_many :guests, :class_name => 'User', through: :reservations
  has_many :pending_reservations, :dependent => :destroy

  geocoded_by :address
  after_validation :geocode

  def self.available(start_date, end_date)
    Car.all.select do |car|
      reserved_dates = car.reservations.map do |reservation|
        array = []
         reservation.start_date.to_date.upto(reservation.end_date.to_date) { |date|  array << date }
         array
      end.flatten
      requested_dates = []
      start_date.upto(end_date) {|date| requested_dates << date}
      intersection = reserved_dates & requested_dates
      intersection.empty?
    end
  end
end
