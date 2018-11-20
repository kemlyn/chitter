class PagesController < ApplicationController
  def index; end

  def home
    @posts = Post.all
    @new_post = Post.new
  end
end
