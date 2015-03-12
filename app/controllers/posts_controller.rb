class PostsController < ApplicationController
before_action :find_post, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
before_action :authenticate_user!, except: [:index, :show]
    
    def index
      if params[:category].blank?
      @posts= Post.all.order("created_at DESC")
    else
      @category_id= Category.find_by(name: params[:category]).id
      @posts=Post.where(category_id: @category_id).order ("created_at DESC")
    end
    end
    
    def new
      @post= current_user.posts.build
    end
    
    def show
      @comments = Comment.where(post_id: @post)
    end
    
    def create
      @post= current_user.posts.build(post_params)
      
      if @post.save
        redirect_to @post
      else
      render 'new'  
      end
    end

    def edit
    end
    
    def update
		  if @post.update(post_params)
			  redirect_to @post
		  else
			  render 'edit'
		  end
	  end
    
    def destroy
      @post.destroy
      redirect_to root_path
    end
    
    def upvote
      @post.upvote_by current_user
      redirect_to :back
    end
    
    def downvote
      @post.downvote_by current_user
      redirect_to :back
    end
    
    
    
    
private
    def find_post
      @post= Post.find(params[:id])
    end
    
    def post_params
      params.require(:post).permit(:title, :task, :translation, :image, :category_id)
    end
end
