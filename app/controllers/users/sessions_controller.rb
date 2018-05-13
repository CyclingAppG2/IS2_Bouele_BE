class Users::SessionsController  < DeviseTokenAuth::SessionsController
    def render_create_success
        
        auth_header = @resource.update_auth_header(@token, @client_id)
        response.set_header("access-token", auth_header["access-token"])
        response.set_header("token-type", auth_header["token-type"])
        response.set_header("client", auth_header["client"])
        response.set_header("expiry", auth_header["expiry"])
        response.set_header("uid", auth_header["uid"])
        render json: {
            success: "true",
            data: @resource
        }
      end
end