class Api::SessionsController < Devise::SessionsController
   
   def create
      if sign_in_params[:email].nil?
         render json: {errors: ['User request must contain the user email.']}
         return
      elsif sign_in_params[:password].nil?
         render json: {errors: ['User request must contain the user password.']}
         return
      end
      
      user = User.find_by_email(sign_in_params[:email])
      if user && user.valid_password?(sign_in_params[:password])
         @current_user = user
         #render json: @current_user
         render :show
      else
         render json: { errors:  'Email or password is invalid!' }, status: :unprocessable_entity
      end
   end
   
   
   private
   def sign_in_params
      params.require(:user).permit(:email, :password)
   end
end
