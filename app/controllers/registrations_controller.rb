# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)

    p"======================================"
    p"======================================"
    p"======================================"
    p current_password
  end
  def sessions
  if user
    session[:current_user]

  end
end
end
