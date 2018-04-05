class Passenger < ApplicationRecord
  has_many :trips

  validates :name, :phone_num, presence: true
  # validates :phone_num, uniqueness: true

  def deactivated?
    return self.deactivated
  end

end
