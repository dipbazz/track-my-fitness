module UserToken
  def self.generate_jwt(user)
    JWT.encode(
      {
        id: user.id,
        exp: 60.days.from_now.to_i
      },
      ENV['SECRET_KEY_BASE'] || Rails.application.secrets.secret_key_base
    )
  end
end
