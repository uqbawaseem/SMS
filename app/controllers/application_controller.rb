class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :roll_no, :role, :email, :password, :password_confirmation)}

               devise_parameter_sanitizer.permit(:account_update, keys: [:name, :roll_no, :email,
                questions_attributes: [
                    :id,
                    :question,
                    :_destroy
               ]])


          end
end
