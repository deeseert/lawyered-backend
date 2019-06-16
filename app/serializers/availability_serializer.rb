class AvailabilitySerializer < ActiveModel::Serializer
  attributes :id, :day, :time, :duration, :lawyer_id, :booked
end
