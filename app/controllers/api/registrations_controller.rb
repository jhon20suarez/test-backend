class Api::RegistrationsController < Devise::RegistrationsController
  
    def create
      @current_user = User.new(user_params)
        
      if @current_user.invalid?
        render json: @current_user.errors, status: :unprocessable_entity
      else
        if @current_user.save
          render :create
        else
          render json: @current_user.errors, status: :unprocessable_entity
        end
      end
    end
    
    private
    def user_params
      puts "user_params"
      params.require(:user).permit(:email, :password)
    end
end
