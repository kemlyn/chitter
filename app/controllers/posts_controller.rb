class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to home_path
    else
      redirect_to root_path
    end
  end

  def post_params
    params.require(:post).permit(:user_id, :content)
  end
end
