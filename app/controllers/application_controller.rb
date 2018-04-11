class ApplicationController < ActionController::API
  before_action :authenticate_user!
  include DeviseTokenAuth::Concerns::SetUserByToken
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  
  ##include DeviseTokenAuth::Concerns::SetAdminByToken
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name])
  end

end
