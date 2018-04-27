class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :authenticate_admin!
  include DeviseTokenAuth::Concerns::SetUserByToken
  #include DeviseTokenAuth::Concerns::SetAdminByToken
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name])
  end

end
