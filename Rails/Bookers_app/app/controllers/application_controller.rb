class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!, except: [:home, :about]

	def after_sign_in_path_for(resource)
		user_path(resource)
	end
	protected
	def configure_permitted_parameters
		added_attrs = [:name, :email]
		devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
    end
end
