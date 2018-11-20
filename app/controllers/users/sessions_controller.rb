# frozen_string_literal: true
class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # def new
  #   super
  # end

  # def create
  #   super
  # end

  def destroy
    sign_out(current_user)
    redirect_to root_path
  end

  # private

  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
