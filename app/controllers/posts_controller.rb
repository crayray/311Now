class PostsController < ApplicationController
    before_action :require_login
    def show
        @post= Post.find(params[:id])
        @comment = Comment.new 
        @comments= Comment.where("post_id = ?", params[:id])
    end

    def new
        @neighborhoods= Neighborhood.all
        @post= Post.new
    end

    def create
        @neighborhoods= Neighborhood.all
        @user= current_user
        @post= Post.new(post_params)
        @post.user= current_user

        
        if @post.valid?
            @post.save
            redirect_to @post
        else    
            render :new
        end
    
    end
    
    private
    def post_params
        params.require(:post).permit(:title, :description, :neighborhood_id, :intersection, :name, :image)
    end
    
    def require_login
        redirect_to welcome_path unless session.include? :user_id 
    end
     
end