class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



  # before_action :configure_permitted_parameters, if :devise_controller?
  #                                                end
  # before_action :configure_permitted_parameters, if: :devise_controller?

   # def check_current_user
   #   return unless @current_user
   #   if @current.class.name == "Realtor" and params["controller"] == "HouseHunter"
   #     # redirect
   #   if @current.class.name == "HouseHunter" and params["controller"] == "Realtor"
   #     # redirect
   #   end
   #       # binding.irb
   # end
  #
  def after_sign_in_path_for(realtor)
     realtor.class.name == "Realtor" ? realtorprofile_path(current_realtor) :house_hunter_root_path
  end

  # protected
  #
  # def configure_permitted_parameters
  #   # devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :phone, :companyid, :email, :encrypted_password)}
  #   # devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:email, :encrypted_password)}
  #   # devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:name, :phone, :companyid, :email, :encrypted_password)}
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :companyid, :email, :encrypted_password])
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :encrypted_password])
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone, :companyid, :email, :encrypted_password])

  #end

end
