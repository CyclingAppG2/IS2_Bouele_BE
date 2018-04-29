class ApplicationController < ActionController::Base
  #before_action :authenticate_user!
  
  include DeviseTokenAuth::Concerns::SetUserByToken
  #include DeviseTokenAuth::Concerns::SetAdminByToken
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name])
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :image, :username, :password, :password_confirmation, :current_password) }
  end

end
