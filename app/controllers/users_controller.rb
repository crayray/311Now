class UsersController < ApplicationController

    def new
        @user= User.new
    end

    def create
        @user = User.create(params.require(:user).permit(:username,        
        :password, :email, :name))
        session[:user_id] = @user.id
        redirect_to '/home'
        # Somewhere in between, we also want a method to store the user id in a session.
    end
end
