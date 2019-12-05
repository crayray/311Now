class ApplicationController < ActionController::Base
    # This ensure the rest of our controllers have access to this method.
    # This is to force all access to be logged in: probably need to work on it.
    # before_action logged_in?, except: [:new, :login]
    helper_method :current_user
    helper_method :logged_in?
    
    def current_user    
        # User.find_by(id: session[:user_id])  
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
          else
            @current_user = nil
          end
    end

    def logged_in?
       
        !current_user.nil?  
    end
    
end
