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
	  # @post.update(title: params[:title], description: params[:description]) <-- before
		@post.update(params.require(:post)) # <-- after
		#Because form_for is bound directly with the Post model, we need to pass the model name into #the Active Record update method in the controller. We need require because it gives us a hash #nasted in post.
	  redirect_to post_path(@post)
	end
end
