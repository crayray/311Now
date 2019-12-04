class CommentsController < ApplicationController
    def new
        @comment= Comment.new
    end

    def create
        @post = Post.find(params[:user_id]) 
    
        @user= current_user
        @comment.user= current_user
        @comments = @post.comment.create(params[:body])  

        
        # @comment= Comment.new(comment_params)
        # @user= current_user
        # @comment.user= current_user
        # post_id= params[:id]
        
        # @post = Post.find(post_id)
         
        
        # if @comments.valid?
        #     @comments.save 
        #     redirect_to @post
        # else
        #     render :new
        # end
    end

    private
    def comment_params
        params.require(:comment).permit(:body, :user_id, :post_id)
    end
end
