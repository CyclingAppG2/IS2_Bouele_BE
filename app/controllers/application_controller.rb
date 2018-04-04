class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include DeviseTokenAuth::Concerns::SetAdminByToken
end
