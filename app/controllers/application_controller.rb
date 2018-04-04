class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :configure_permitted_parameters, if: :devise_controller?
  ##include DeviseTokenAuth::Concerns::SetAdminByToken
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name])
  end
  # protected
  #         def configure_permitted_parameters
  #             devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :username, :name, :password) }
              
  #         end
end
