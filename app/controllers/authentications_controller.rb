class AuthenticationsController < ApplicationController
    skip_before_action :authorize_request, only: :authenticate
    
    def authenticate
        auth_token = AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
        user = JsonWebToken.decode(auth_token)
        json_response(message: "success", access_token: auth_token, user: user)
    end
    
    private
    
    def auth_params
        params.permit(:email, :password)
    end
end
