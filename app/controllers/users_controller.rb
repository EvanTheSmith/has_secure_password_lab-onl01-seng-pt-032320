class UsersController < ApplicationController
  def new # Sign Up Form
    @user = User.new
  end

  def create # Sign Up Post Path
   redirect_to signup_path if params[:user][:password] != params[:user][:password_confirmation]
   @user = User.create(user_params)
   session[:user_id] = @user.id
  end
     
private 
  def user_params
  params.require(:user).permit(:name, :password, :password_confirmation)
  end    
end