class ApplicationController < ActionController::Base
  # include DeviseTokenAuth::Concerns::SetUserByToken
  # protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.new_user_session_url, :alert => exception.message
  end
end
