class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:login, :handle_login, :new, :create]

  def login

  end

  def handle_login

    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_profile_path(@user)
    else
      redirect_to login_path
    end

  end

  def logout
    session[:user_id] = nil
    redirect_to login_path
  end

  def new
      @new_user = User.new
  end 

  def create
  
      @new_user = User.create(username: params[:username], password: params[:password], first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
      session[:user_id] = @new_user.id
      redirect_to new_party_path
  end 

  private
  def user_params
    params.require(:user).permit(:username, :password, :first_name,:last_name, :email)
  end 

end 