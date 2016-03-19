class AuthController < ApplicationController
  skip_before_action :authenticate_request!, :only => [:authenticate]
  def authenticate
    user = User.find_by_credentials(params[:username], params[:password])
    if user
      render json: authentication_payload(user)
    else
      render json: { errors: ['Invalid username or password'] }, status: :unauthorized
    end
  end
  def profile
    render json: @current_user , serializer: UserSerializer
  end
  private

  def authentication_payload(user)
    return nil unless user && user.id
    {
      auth_token: AuthToken.encode(user_id: user.id),
      user: { id: user.id, username: user.username } # return whatever user info you need
    }
  end

end
