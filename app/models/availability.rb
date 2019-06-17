class Availability < ApplicationRecord
  belongs_to :lawyer
  has_one :appointment
end
