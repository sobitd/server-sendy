class ParcelPolicy < ApplicationPolicy
      attr_reader :current_user, :api_v1_parcel
    
      def initialize(current_user, api_v1_parcel)
        @current_user = current_user
        @parcel = api_v1_parcel
      end
    
      def create?
        
      end
    
      def index?
        
      end
    
      def show?
       
      end
    
      def update?
        current_user.admin?
      end
    
      def destroy?
        current_user.admin?
      end
end