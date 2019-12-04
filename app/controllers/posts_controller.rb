class PostsController < ApplicationController
    def show
        @post= Post.find(params[:id])
        
        # neighborhood_id= @post.neighborhood_id
        # @neighborhood  = Neighborhood.find(neighborhood_id)
        
    
    end

    def new
        @neighborhoods= Neighborhood.all
<<<<<<< HEAD
=======
        @posts= Post.all
>>>>>>> collection-select-on-posts-form
        @post= Post.new
    end

    def create
<<<<<<< HEAD
=======
        # We needed to add Neighborhood.all to make this available to the create action
>>>>>>> collection-select-on-posts-form
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
<<<<<<< HEAD
        params.require(:post).permit(:title, :description, :neighborhood_id, :intersection, :name)
=======
        params.require(:post).permit(:title, :description, :neighborhood_id, :intersection)
>>>>>>> collection-select-on-posts-form
      end
end
