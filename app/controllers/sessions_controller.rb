class SessionsController < ApplicationController
  
  
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
       session[:user_id] = @user.id
       redirect_to '/home'
    else
       redirect_to '/welcome'
    end
  end

  def login
  end

  def welcome
   
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login', notice: "Logged out!"
  end
 
end
