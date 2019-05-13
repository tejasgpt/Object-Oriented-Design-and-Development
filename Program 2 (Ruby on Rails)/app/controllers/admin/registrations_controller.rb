# frozen_string_literal: true

class Admin::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  #before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  #def new
  #  super
  #end

  # POST /resource
  #def create
  # super
  #end

  # GET /resource/edit
  #def edit
  #  super
  #end

  #def admin_params
  #  params.require(:admin).permit(:email, :name, :password)
  #end

  # If you have extra params to permit, append them to the sanitizer.
  #def configure_account_update_params
   # devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  #end
end
