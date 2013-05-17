class ApplicationController < ActionController::Base
	protect_from_forgery

	private

	def authorize
		redirect_to signin_path, alert: "please login first" if current_user.nil?
	end

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user
 
end