class PostsController < ApplicationController
    def show
        @post= Post.find(params[:id])
        
        neighborhood_id= @post.neighborhood_id
        @neighborhood  = Neighborhood.find(neighborhood_id)
        
    
    end

    def new
        @neighborhoods= Neighborhood.all
        @posts= Post.all
        @post= Post.new
    end

    def create
        # We needed to add Neighborhood.all to make this available to the create action
        @neighborhoods= Neighborhood.all
        @post= Post.new(post_params)
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
        params.require(:post).permit(:title, :description, :neighborhood_id, :intersection)
      end
end
