class WelcomeController < ApplicationController
  def home
    if !logged_in?
      redirect_to login_path
    end
    @user = current_user
  end
end