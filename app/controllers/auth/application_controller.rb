class Auth::ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  include ActionController::ImplicitRender
 
  acts_as_token_authentication_handler_for User, fallback: :none

  private
    
    def current_user
      
      user_email = request.query_parameters[:user_email].presence
      user       = user_email && User.find_by_email(user_email)
      
      if user && Devise.secure_compare(user.authentication_token, request.query_parameters[:user_token])
          user = User.find_by_email(user_email)
        return user
      else
      render :json => '{"success" : "false"}'
      end
   
    end
   
   
    def authenticate_user_from_token!
   
      user_email = params[:user_email].presence
      user       = user_email && User.find_by_email(user_email)
   
      # Notice how we use Devise.secure_compare to compare the token
      # in the database with the token given in the params, mitigating
      # timing attacks.
      if user && Devise.secure_compare(user.authentication_token, params[:user_token])
          user = User.find_by_email(user_email)
        return true
      else
      render :json => '{"success" : "false"}'
      end
    end
end