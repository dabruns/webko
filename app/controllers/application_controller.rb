# ApplicationController mit ein paar Berechtigung Optionen
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # define permitted parameters
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:username, :first_name, :last_name,
               :email, :password, :password_confirmation, :remember_me)
    end
    devise_parameter_sanitizer.for(:sign_in) do |u|
      u.permit(:login, :username, :email, :password, :remember_me)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:username, :first_name, :last_name,
               :email, :password, :password_confirmation, :current_password)
    end
  end

  # define false authentification of admin user
  def authenticate_admin_user!
    redirect_to new_user_session_path unless current_user && current_user.has_role?(:admin)
  end
end
