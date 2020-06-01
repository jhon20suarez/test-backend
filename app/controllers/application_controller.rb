class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  include ActionController::HttpAuthentication::Token::ControllerMethods
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
  
  def authenticate_user
    unless request.path['users/sign_in'].present? or request.path['/auth/login'].present?
      if request.headers['Authorization'].present?
        authenticate_or_request_with_http_token do |token|
          begin
            jwt_payload = JWT.decode(token, Rails.application.secrets.secret_key_base).first
            @current_user_id = jwt_payload['id']
          rescue JWT::ExpiredSignature, JWT::VerificationError, JWT::DecodeError => e
            render json: { errors:  e.message }, status: :unauthorized
          end
        end
      else
        render json: { errors:  'token requiered' }, status: :unauthorized
      end
    end
  end
  
  def authenticate_user!(options = {})
    head :unauthorized unless signed_in?    
  end
  
  def current_user
    @current_user ||= super || User.find(@current_user_id)
  end
  
  def signed_in?
    @current_user_id.present?
  end
  
end
