class HomeController < ApplicationController
  before_action :require_login 

  def index
  
    @posts= Post.all
  end

  
  private 
  def require_login
  
    redirect_to login_path unless session.include? :user_id 
  end
 
end
