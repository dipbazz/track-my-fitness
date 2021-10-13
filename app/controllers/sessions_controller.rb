class SessionsController < Devise::SessionsController
  def create
    auth = Authentication.new(sign_in_params)

    if auth.authenticate
      render json: {
        message: 'Login successful!',
        user: {
          token: auth.generate_token,
          email: auth.email
        }
      }, status: :ok
    else
      render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end

  private

  def sign_in_params
    params.require(:user).permit(:email, :password)
  end
end
