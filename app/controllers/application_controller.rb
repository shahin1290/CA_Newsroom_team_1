class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?, :set_locale

  def configure_permitted_parameters
    attributes = [:first_name, :last_name]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
  end
end

def set_locale
  I18n.locale = params[:locale] || I18n.default_locale
end