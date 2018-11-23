class RepliesController < ApplicationController
  def new
    @comment = Comment.find(params[:comment_id])
    @reply = @comment.replies.new
  end

  def create
    @comment = Comment.find(params[:comment_id])
    @reply = @comment.replies.new(reply_params)
    @reply.user_id = current_user.id
    if @reply.save
      redirect_to home_path
    else
      flash[:notice] = 'Unable to reply to this comment'
      render :new
    end
  end

  private

  def reply_params
    params.require(:reply).permit(:comment_id, :body, :post_id, :user_id)
  end
end
