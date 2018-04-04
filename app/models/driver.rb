class Driver < ApplicationRecord
  has_many :trips

  #any method in model can be called on a specific instance of that class
  def earnings
    total = 0
    self.trips.each do |trip|
       total += ((trip.cost/100.00) - 1.65) * 0.8
    end
    return total
  end

end
