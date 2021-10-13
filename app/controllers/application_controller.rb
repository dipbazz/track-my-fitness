class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods
  include ExceptionHandler

  respond_to :json

  before_action :underscore_params!
  before_action :authenticate_user

  private

  def underscore_params!
    params.deep_transform_keys!(&:underscore)
  end

  def authenticate_user
    return unless request.headers['Authorization'].present?

    @authorization = Authorization.new(request)
  end

  def authenticate_user!(_options = {})
    head :unauthorized unless signed_in?
  end

  def current_user
    @current_user ||= super || User.find(@authorization.current_user)
  end

  def signed_in?
    @authorization.current_user.present?
  end
end
