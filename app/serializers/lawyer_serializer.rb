class LawyerSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :username, :email, :password_digest, :image, :location, :price_hour, :latitude, :longitude

  has_many :appointments
  has_many :clients
end
