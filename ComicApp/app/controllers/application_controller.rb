class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  # before action is going to run the method confi.. for every controller, 
  # so we put a condition to only work when its a devise controller

protected 

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  	# sign up is a strong param so there are different types so check it out
  end

end
