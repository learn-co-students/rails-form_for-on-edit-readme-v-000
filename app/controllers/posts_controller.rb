class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
		# binding.pry
	  redirect_to post_path(@post)
	end

	def edit
		@post = Post.find(params[:id])
		# binding.pry
	end

	def update
	  @post = Post.find(params[:id])
	  @post.update(title: params[:post][:title], description: params[:post][:description])
		redirect_to post_path(@post)
	end
end
