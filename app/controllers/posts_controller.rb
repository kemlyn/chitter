class PostsController < ApplicationController
	def new
		@post = Post.new
		
	end

	def create
		@post =Post.new(post_params)
		@post.user_id = current_user.id
			if @post.save
				redirect_to ""
			else
				redirect_to ""
			end
	end

	private
	def post_params
		params.require(:post).permit(:user_id, :content)
	end
end