class Passenger < ApplicationRecord
  has_many :trips

  validates :name, :phone_num, presence: true


def total_paid
  total = 0
  self.trips.each do |trip|
     total += trip.cost/100.00
  end
  return total
end



end
