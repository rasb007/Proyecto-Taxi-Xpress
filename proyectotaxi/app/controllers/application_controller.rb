class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

	protected
  	
  	def configure_permitted_parameters
    	devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :password, :password_confirmation, :username, :telefono, :direccion, :movil, :dni, :licencia, :marca, :modelo, :placa, :color, :tipo)}
  	end
  
  	before_filter :configure_permitted_parameters, if: :devise_controller?

	protected
	
	def configure_permitted_parameters
   		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :remember_me, :username, :telefono, :direccion, :movil, :dni, :licencia, :marca, :modelo, :placa, :color, :tipo) }
   		devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :remember_me, :username, :telefono, :direccion, :movil, :dni, :licencia, :marca, :modelo, :placa, :color, :tipo) }
   		devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :username, :telefono, :direccion, :movil, :dni, :licencia, :marca, :modelo, :placa, :color, :tipo) }
	end
end
