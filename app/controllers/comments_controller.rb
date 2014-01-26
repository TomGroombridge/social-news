	class CommentsController < ApplicationController

	def new
		@post = Post.find params[:post_id]
		@comment = Comment.new(post: @post)
	end

	def create
		@post = Post.find params[:post_id]
		@post.comments << Comment.create(params[:comment].permit(:title, :content))
		# @comment.post = @post
		# @comment.user = current_user
		redirect_to post_path(@post)
	end
end
