# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :ensure_params_exist, only: [:create]


# prepend_before_action :require_no_authentication, only: [ :create]
# prepend_before_action :allow_params_authentication!, only: :create
# prepend_before_action :verify_signed_out_user, only: :destroy
# prepend_before_action(only: [:create, :destroy]) { request.env["devise.skip_timeout"] = true }

# GET /resource/sign_in
# def new
#   self.resource = resource_class.new(sign_in_params)
#   clean_up_passwords(resource)
#   yield resource if block_given?
#   respond_with(resource, serialize_options(resource))
# end
#before_action :ensure_params_exist

respond_to :json
# POST /resource/sign_in
def create
  
  user = User.where(email: params[:email]).first
  if user&.valid_password?(params[:password])
    #sign_in("user", user)
    render json: user.as_json(only: [:email, :authentication_token]), status: :created
  else
    render :json=> {:success=>false, :message=>"Error with your login or password"}, status: :unauthorized
  end
  # ##print resource
  # self.resource = warden.authenticate!(auth_options)
  # ##render :json=> {:success=>true, :auth_token=>resource.authentication_token, :login=>resource.login, :email=>resource.email}
  # set_flash_message!(:notice, :signed_in)
  # sign_in(resource_name, resource)
  # yield resource if block_given?
  
  # respond_with resource, location: after_sign_in_path_for(resource)
end

# DELETE /resource/sign_out
def destroy
  current_user&.authentication_token = nil
  if current_user.save
    head(:ok)
  else
    head(:unauthorized)
  end
  #sign_out(resource_name)
end

protected
  def ensure_params_exist
    return unless params[:email].blank? || params[:password].blank?
    render :json=>{:success=>false, :message=>"missing session parameter"}, :status=>422
  end

  def parmetros_invalidos
    render :json=> {:success=>false, :message=>"Error with your login or password"}, :status=>401
  end

# protected

# def sign_in_params
#   devise_parameter_sanitizer.sanitize(:sign_in)
# end

# def serialize_options(resource)
#   methods = resource_class.authentication_keys.dup
#   methods = methods.keys if methods.is_a?(Hash)
#   methods << :password if resource.respond_to?(:password)
#   { methods: methods, only: [:password] }
# end

# def auth_options
#   { scope: resource_name, recall: "#{controller_path}#new" }
# end

# def translation_scope
#   'devise.sessions'
# end

# private

# Check if there is no signed in user before doing the sign out.
#
# If there is no signed in user, it will set the flash message and redirect
# to the after_sign_out path.
# def verify_signed_out_user
#   if all_signed_out?
#     set_flash_message! :notice, :already_signed_out

#     respond_to_on_destroy
#   end
# end

# def all_signed_out?
#   users = Devise.mappings.keys.map { |s| warden.user(scope: s, run_callbacks: false) }

#   users.all?(&:blank?)
# end

# def respond_to_on_destroy
#   # We actually need to hardcode this as Rails default responder doesn't
#   # support returning empty response on GET request
#   respond_to do |format|
#     format.all { head :no_content }
#     format.any(*navigational_formats) { redirect_to after_sign_out_path_for(resource_name) }
#   end
# end
end
