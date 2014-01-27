class PostsController < ApplicationController

	before_action :authenticate_user!

	def new
		@post = Post.new
		@post.user
	end  

	def create
		@post = Post.create params[:post].permit(:title, :content)
		@post.user = current_user
		redirect_to '/posts'
	end

	def index
		@posts = Post.all
	end

	def edit
		@post = Post.find params[:id]

	end

	def update
		@post = current_user.posts.find params[:id]
		@post.update params[:post].permit(:title, :content)

		redirect_to '/posts'
	end

	def destroy
		@post = Post.find params[:id]
		@post.destroy

    redirect_to '/posts'	
	end

	def show
		@post = Post.find params[:id]
	end
end
