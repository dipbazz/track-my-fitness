module ApplicationHelper
  def generate_jwt(user)
    UserToken.generate_jwt(user)
  end
end
