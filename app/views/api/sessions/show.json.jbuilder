json.(
    @current_user, :id, :email
)
json.token @current_user.generate_jwt