class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def nothing
    render text: '', content_type: 'text/plain'
  end
  protect_from_forgery with: :null_session
  acts_as_token_authentication_handler_for User, fallback: :none
end
