class Appointment < ApplicationRecord
  belongs_to :client
  belongs_to :availability

  # validates :client_id, {presence: false}
end
