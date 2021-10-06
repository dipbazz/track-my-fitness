class Authorization
  def initialize(request)
    p request
    @token = request.headers['Authorization']
    p @token
    p '@@@@@@@@@@@@@@@'
  end

  def current_user
    JsonWebToken.decode(@token)[:user_id] if @token
  end
end
