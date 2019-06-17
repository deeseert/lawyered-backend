class Lawyer < ApplicationRecord
  has_secure_password
  has_many :availabilities
  has_many :appointments, through: :availabilities
  has_many :clients, through: :appointments
end
