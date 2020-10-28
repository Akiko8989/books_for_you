class TroublePostsController < ApplicationController
  
  def index
    @trouble_post = TroublePost.new
    @trouble_posts = TroublePost.includes(:user)
  end

  def create
    trouble_post = current_user.trouble_posts.create!(trouble_post_params)
    redirect_to root_path
  end

  def destroy
    trouble_post = TroublePost.find(params[:id])
    trouble_post.destroy!
    redirect_to trouble_posts_path
  end

  private
  def trouble_post_params
    params.require(:trouble_post).permit(:content)
  end

end
