class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[photo age gender bio location full_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: %i[photo age gender bio location full_name])
  end
end
