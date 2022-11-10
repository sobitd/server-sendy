class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name,:last_name,:username,:email,:phone_number,:isAdmin

  has_many :api_v1_parcels
end
