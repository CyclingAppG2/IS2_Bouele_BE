class ApplicationController < ActionController::API

    def current_user
        @_current_user ||= authenticate_token
      end
      private
      def authenticate_token
          User.find_by(authentication_token: token)
      end
end
