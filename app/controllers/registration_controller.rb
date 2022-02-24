class RegistrationsController < Devise::RegistrationsController
def update_resource(resource, params)
    if !params[:password].blank?
      resource.password = params[:password]
      resource.password_confirmation = params[:password_confirmation]
    end
  
    resource.update_without_password(params)
  end
end