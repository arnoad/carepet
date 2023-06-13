class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[full_name address bio house_type carer? age])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: %i[full_name address bio house_type carer? age])
  end
end
