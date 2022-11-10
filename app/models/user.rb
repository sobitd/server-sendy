class User < ApplicationRecord
  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: JwtDenylist 
  has_many :api_v1_parcels 

  enum role: { normal: 0, admin: 1}
end