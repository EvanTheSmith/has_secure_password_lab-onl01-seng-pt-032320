class SessionsController < ApplicationController
  def new # Log In Form
  end

  def create # Log In Post Path
    redirect_to login_path if params[:user][:password] != params[:user][:password_confirmation]
    @user = User.find_by(name: params[:user][:name])
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    # if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
    #  redirect_to '/'
    # else
    #  redirect_to login_path
    # end
  end
end