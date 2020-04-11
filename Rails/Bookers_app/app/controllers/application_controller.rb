class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!
	protected
	def configure_permitted_parameters
		added_attrs = [:name, :introduction, :profile_image_id]
		devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
		devise_parameter_sanitizer.permit(:sign_in, keys: added_attrs)
    end
end
