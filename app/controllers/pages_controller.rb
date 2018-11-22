class PagesController < ApplicationController
  def index
    @posts = Post.all
  end

  def home
    @posts = Post.all
    @new_post = Post.new
  end
end
