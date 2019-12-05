class PostsController < ApplicationController
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
        # @post_image= @post.image.attach(params[:image])
        
        if @post.valid?
            @post.save
            redirect_to @post
        else    
            render :new
        end
    
    end

    def search
        @posts = Post.all
        #neighborhood_id = @posts.last.neighborhood
        #in order to filter the results, get all the posts
        #iterate through @posts to get each post, to get the post with the neighborhood id matching the neighbord id selected by the user 
        #@posts.each do |p| 
       # if p.neighborhood == 
    end
    
    private
    def post_params
        params.require(:post).permit(:title, :description, :neighborhood_id, :intersection, :name, :image, :neighborhood)
    end
end
