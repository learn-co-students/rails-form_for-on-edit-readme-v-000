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
    # using form_tag
    @post = Post.create(title: params[:title], description: params[:description])
	  redirect_to post_path(@post)
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
    # using form_for
	  @post = Post.find(params[:id])
    @post.update(post_params)
	  redirect_to post_path(@post)
	end

  private

    def post_params
      params.require(:post).permit(:title, :description)
    end

end
