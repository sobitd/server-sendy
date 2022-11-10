class Api::V1::ParcelSerializer < ActiveModel::Serializer
  attributes :id, :recipient_contact, :recipient_name,:weight,:from,:destination,:distance,:total_cost,:distance
end
