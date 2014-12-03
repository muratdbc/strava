class LogoutController < ApplicationController
  def destroy
    session[:current_user_id] = nil

    redirect_to root_path
  end
end
