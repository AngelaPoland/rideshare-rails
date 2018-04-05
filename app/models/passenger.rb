class Passenger < ApplicationRecord
  has_many :trips

  validates :name, :phone_num, presence: true


  def deactivated?
    return self.deactivated
  end

end
