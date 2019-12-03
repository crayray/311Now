class PostsController < ApplicationController
    def show
        @post= Post.find(params[:id])
    end

    def new
        @posts= Post.all
        @post= Post.new
    end

    def create
        @post= Post.new(post_params)

        if @post.valid?
            @post.save
            redirect_to @post
        else    
            render :new
        end

    end
    
    private
    def post_params
        params.require(:post).permit(:title, :description, :neighborhood, :intersection)
      end
end
