class Client < ApplicationRecord
  has_secure_password
  has_many :appointments
  has_many :lawyers, through: :appointments
end
