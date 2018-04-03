class V1::SessionsController < ApplicationController

    before_action :ensure_params_exist, only: [:create]

    def create
        user = User.where(email: params[:email]).first
        if user&.valid_password?(params[:password])
            #sign_in("user", user)
            render json: user.as_json(only: [:email, :authentication_token]), status: :created
        else
            render :json=> {:success=>false, :message=>"Error with your login or password"}, status: :unauthorized
        end
    end

    def destroy
        current_user&.authentication_token = nil
        if current_user.save
          head(:ok)
        else
          head(:unauthorized)
        end

      end

      protected
        def ensure_params_exist
            return unless params[:email].blank? || params[:password].blank?
            render :json=>{:success=>false, :message=>"missing session parameter"}, :status=>422
        end

        def parmetros_invalidos
            render :json=> {:success=>false, :message=>"Error with your login or password"}, :status=>401
        end
end