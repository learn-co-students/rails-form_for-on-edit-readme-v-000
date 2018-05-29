class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = find_obj_by_id
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def edit
		@post = find_obj_by_id
	end

	def update
	  @post = find_obj_by_id
		@post.update(params.require(:post))
	   redirect_to post_path(@post)
	end
end

	def find_obj_by_id
		Post.find(params[:id])
	end
