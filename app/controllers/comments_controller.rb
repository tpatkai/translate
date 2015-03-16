class CommentsController < ApplicationController
	before_action :authenticate_user!
	before_action :find_comment, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
	
	def create
		@post = Post.find(params[:post_id])
		@comment = Comment.create(params[:comment].permit(:content))
		@comment.user_id = current_user.id
		@comment.post_id = @post.id

		if @comment.save
			redirect_to post_path(@post)
		else
			render 'new'
		end
	end
	
def upvote
  @comment = @post.comments.find(params[:post_id])
  @comment.upvote_by current_user
  redirect_to :back
end

def downvote
  @comment = @post.comments.find(params[:post_id])
  @comment.downvote_by current_user
  redirect_to :back
end
end


