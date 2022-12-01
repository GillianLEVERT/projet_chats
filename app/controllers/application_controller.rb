class ApplicationController < ActionController::Base

    before_action :initialize_cart
    
    def initialize_cart
      if current_user
        @cart ||= current_user.cart
          if @cart.nil?
            @cart= Cart.create(user_id: current_user.id)
          end
        end
       end
end
