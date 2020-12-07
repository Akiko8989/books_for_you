class CommentsController < ApplicationController

  def create
    @comments = current_user.commets.create!(comment_params)
    redirect_to root_path
  end

  private
  def comment_params
    params.require(:comment).permit(:titke, :author, :content)
  end
end
