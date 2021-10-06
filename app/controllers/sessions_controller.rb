class SessionsController < Devise::SessionsController
  def create
    user = Authentication.new(sign_in_params)
    p user
    p '############################'

    if user.authenticate
      authorization_object = Authorization.new(request)
      current_user = authorization_object.current_user
      @current_user = User.find(current_user)
    else
      render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end

  private

  def sign_in_params
    params.require(:user).permit(:email, :password)
  end
end
