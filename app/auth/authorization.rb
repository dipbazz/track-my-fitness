class Authorization
  def initialize(request)
    token = request.headers['Authorization']
    @token = token.strip.split(' ')[1]
  end

  def current_user
    JsonWebToken.decode(@token)[:user_id] if @token
  end
end
