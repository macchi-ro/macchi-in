class Public::CommentsController < ApplicationController

  def create
  @comment = Comment.new(comment_params)
  @customer = current_customer
  @comment.save
  redirect_to comments_path
  end

  def index
   @comments = Comment.all
   @Comment = Comment.new
  end

  private
  def comment_params
    params.require(:comment).permit(:customer_id, :title, :content)
  end

end