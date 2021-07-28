json.call(user, :id, :email, :bio, :image)
json.token user.generate_jwt
