class ApplicationController < ActionController::Base
 
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end


  def after_sign_in_path_for(resources)
    #flash[:success] = "Signed in successfully."
    user_path(resources)
  end

   def after_sign_out_path_for(resources)
     #flash[:success] = "Signed out successfully."
     root_path(resources)
   end

   def after_sign_up_path_for(resources)
     #flash[:success] = "Signed out successfully."
     root_path(resources)
   end


end
