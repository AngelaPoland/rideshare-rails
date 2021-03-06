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

  def self.available_driver    #this isn't working correctly
    available_drivers = []
    Driver.all.each do |driver|
      if !driver.deactivated && driver.available
        available_drivers << driver
      end
    end
    available driver = available_drivers.sample
    return available_driver
  end

  def average_rating
    num_of_ratings = 0
    total = 0.0
    self.trips.each do |trip|
      total +=trip.rating
      num_of_ratings += 1
    end
    average = (total/num_of_ratings)
    return average
  end

end
