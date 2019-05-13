# frozen_string_literal: true

class Realtors::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :configure_sign_in_params, if: :devise_controller?

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_in_params
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :companyid, :email, :encrypted_password])
     devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :encrypted_password])
     devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone, :companyid, :email, :encrypted_password])
   end
end
