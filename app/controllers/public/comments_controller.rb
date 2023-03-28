class Public::CommentsController < ApplicationController
  before_action :authenticate_customer!

  def create
  @comment = Comment.new(comment_params)
  @customer = current_customer
    if @comment.save
      redirect_to comments_path
    else
      @comments = Comment.all
      render :index
    end
  end

  def index
   if params[:latest]
     @comments = Comment.latest.page(params[:page]).per(5)
   elsif params[:old]
     @comments = Comment.old.page(params[:page]).per(5)
   else
     @comments = Comment.all.page(params[:page]).per(5)
   end
   @comment = Comment.new
  end

  def destroy
   @comment = Comment.find(params[:id])
   @comment.destroy
   redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:customer_id, :title, :content)
  end

end