class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :surname, :username, :email, :password_digest, :image

  has_many :lawyers
  has_many :appointments
end
