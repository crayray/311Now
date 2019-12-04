class CommentsController < ApplicationController
    def new
        @comment= Comment.new
    end

    def create
        @comment= Comment.new
        @post = Post.find(params[:comment][:post_id]) 
    
        @user= current_user
        @comment.user= current_user
        @comment = @post.comments.create(comment_params)  
         
        
        if @comment.valid?
            @comment.save 
            redirect_to @post
        else
            render :new
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:body, :user_id, :post_id)
    end
end
