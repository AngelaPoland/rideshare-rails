class Driver < ApplicationRecord
  has_many :trips
  validates :vin, :name, presence: true



  #any method in model can be called on a specific instance of that class
  def earnings
    total = 0
    self.trips.each do |trip|
       total += ((trip.cost/100.00) - 1.65) * 0.8
    end
    return total
  end

  def self.available_drivers
    Driver.all.each do |driver|
      if !driver.deactivated && #status is available
        available_drivers << driver
      end
    end
    return available_drivers
  end

end
