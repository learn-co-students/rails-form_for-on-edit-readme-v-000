class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
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
		@post = Post.find(params[:id])
	end

	def update
	  @post = Post.find(params[:id])

		# NOTE : Replacing the below with the second below because using "Form for" form (attached to model)
	  # @post.update(title: params[:title], description: params[:description])
		@post.update(params.require(:post))

	  redirect_to post_path(@post)
	end
end
