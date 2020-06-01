class UsersController < ApplicationController
    
    before_action :set_user, only: [:show]
    # before_action :authenticate_user!

    def show
      render :show
    end

    def create
      @current_user = User.new(user_params)

      if @current_user.invalid?
        render json: @current_user.errors, status: :unprocessable_entity
      else
        if @current_user.save
          render :create
          # render json: @current_user
        else
          render json: @current_user.errors, status: :unprocessable_entity
        end
      end
    end
    
    private
    
    def user_params
        params.require(:user).permit(:email, :password)
    end
end
