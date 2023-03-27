class Admin::CommentsController < ApplicationController
  before_action :authenticate_admin!
  def index
   @comments = Comment.all
  end

  def edit
   @comment = Comment.find(params[:id])
  end

  def update
   @comment = Comment.find(params[:id])
   if @comment.update(comment_params)
      flash[:notice] = "投稿情報の更新に成功しました！"
      redirect_to admin_comments_path
   else
    render :edit
   end
  end

  def destroy
   @comment = Comment.find(params[:id])
   @comment.destroy
   redirect_to admin_comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :content)
  end

end
