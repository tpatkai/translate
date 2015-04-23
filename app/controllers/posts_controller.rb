class PostsController < ApplicationController
before_action :find_post, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, except: [:index, :show, :create]
		
		def index
			if params[:tag]
				@posts = Post.tagged_with(params[:tag])
			else
				@posts= Post.all.order("created_at DESC")
			end
		end
	
		def home
		end
		
		def new
			@post= current_user.posts.build
			@groups = Group.all.map{|c| [ c.name, c.id ] }
		end
		
		def show
			@comments = Comment.where(post_id: @post)
			@random_post= Post.where.not(id: @post).order("RANDOM()").first
		end
		
		def create
			@post= current_user.posts.build(post_params)
			@post.group_id = params[:group_id]
			if @post.save
				redirect_to @post
			else
			render 'new'  
			end
		end

		def edit
			@groups = Group.all.map{|c| [ c.name, c.id ] }
		end
		
		def update
			if @post.update(post_params)
				@post.group_id = params[:group_id]
				redirect_to @post
			else
				render 'edit'
			end
		end
		
		def destroy
			@post.destroy
			redirect_to root_path
		end



private
		def find_post
			@post= Post.find(params[:id])
		end
		
		def post_params
			params.require(:post).permit(:title, :task, :translation, :translated, :image, :category_id, :group_id, :all_tags)
		end
end