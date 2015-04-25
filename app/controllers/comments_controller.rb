class CommentsController < ApplicationController
	before_action :authenticate_user!

def new
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
	
	def vote_up
		 begin
		 @comment = Comment.find(params[:id])
		 current_user.vote_for(@comment)
		flash[:message] = 'Thanks for voting! +5 points'
		current_user.increase_karma
		redirect_to :back
		rescue	
		 ActiveRecord::RecordInvalid
		 flash[:error] = 'Already voted!'
		redirect_to :back
	end
end
end
