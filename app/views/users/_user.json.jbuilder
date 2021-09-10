json.call(user, :id, :email, :bio, :image)
json.token generate_jwt(user)
