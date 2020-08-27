class WelcomeController < ApplicationController
  def home
    if !session[:user_id]
      redirect_to login_path
    end
    @user = current_user
  end
end