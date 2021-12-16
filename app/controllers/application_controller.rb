class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:last_name])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:add_line1])
      devise_parameter_sanitizer.permit(:account_update, keys: [:add_line1])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:add_line2])
      devise_parameter_sanitizer.permit(:account_update, keys: [:add_line2])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:country])
      devise_parameter_sanitizer.permit(:account_update, keys: [:country])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:state])
      devise_parameter_sanitizer.permit(:account_update, keys: [:state])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:city])
      devise_parameter_sanitizer.permit(:account_update, keys: [:city])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:pin_code])
      devise_parameter_sanitizer.permit(:account_update, keys: [:pin_code])
    end
    
end
