class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
  	redirect_to root_path, notice: "You are not authorized to edit this book"
  end

  before_action :config_permitted_parameters, if: :devise_controller?

  protected
  def config_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << :fullname
  devise_parameter_sanitizer.for(:account_update) << :fullname
  end
end
